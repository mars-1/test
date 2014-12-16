.class public final enum Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;
.super Ljava/lang/Enum;
.source "ShareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadOP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD_COLLECT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum DELETE_ATTITUDE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum DELETE_COMMENT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum DELETE_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum DOWNLOAD_FILE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum DOWNLOAD_IMAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum DOWNLOAD_VOICE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum GET_FRIENDS_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum GET_MESSAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum GET_PERSONAL_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum GET_PUBLIC_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum GET_SHARE_BY_ID:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum GET_SHARE_HOME:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum INVALID_OP:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum REFRESH_CONTACT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum SEND_ATTITUDE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum SEND_COMMENT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum SEND_FRIEND_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum SET_SHARE_HOME:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum TRANSMIT_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

.field public static final enum UPLOAD_SHARE_FILE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "INVALID_OP"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->INVALID_OP:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 170
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "REFRESH_CONTACT"

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->REFRESH_CONTACT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 171
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "SEND_FRIEND_SHARE"

    invoke-direct {v0, v1, v5}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SEND_FRIEND_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 172
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "UPLOAD_SHARE_FILE"

    invoke-direct {v0, v1, v6}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->UPLOAD_SHARE_FILE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 173
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "GET_FRIENDS_SHARE"

    invoke-direct {v0, v1, v7}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_FRIENDS_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 174
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "GET_PUBLIC_SHARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_PUBLIC_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 175
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "DELETE_SHARE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DELETE_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 176
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "SEND_COMMENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SEND_COMMENT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 177
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "DELETE_COMMENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DELETE_COMMENT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 178
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "ADD_COLLECT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->ADD_COLLECT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 179
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "DOWNLOAD_FILE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DOWNLOAD_FILE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 180
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "DOWNLOAD_IMAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DOWNLOAD_IMAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 181
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "DOWNLOAD_VOICE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DOWNLOAD_VOICE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 182
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "TRANSMIT_SHARE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->TRANSMIT_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 183
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "GET_PERSONAL_SHARE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_PERSONAL_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 184
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "GET_MESSAGE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_MESSAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 185
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "SEND_ATTITUDE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SEND_ATTITUDE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 186
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "DELETE_ATTITUDE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DELETE_ATTITUDE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 187
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "GET_SHARE_BY_ID"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_SHARE_BY_ID:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 188
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "GET_SHARE_HOME"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_SHARE_HOME:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 189
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    const-string/jumbo v1, "SET_SHARE_HOME"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SET_SHARE_HOME:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    .line 168
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->INVALID_OP:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->REFRESH_CONTACT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SEND_FRIEND_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->UPLOAD_SHARE_FILE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_FRIENDS_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_PUBLIC_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DELETE_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SEND_COMMENT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DELETE_COMMENT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->ADD_COLLECT:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DOWNLOAD_FILE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DOWNLOAD_IMAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DOWNLOAD_VOICE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->TRANSMIT_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_PERSONAL_SHARE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_MESSAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SEND_ATTITUDE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->DELETE_ATTITUDE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_SHARE_BY_ID:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->GET_SHARE_HOME:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->SET_SHARE_HOME:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$ThreadOP;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
