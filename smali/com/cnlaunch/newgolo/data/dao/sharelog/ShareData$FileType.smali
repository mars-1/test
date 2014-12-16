.class public final enum Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;
.super Ljava/lang/Enum;
.source "ShareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

.field public static final enum FILE_COMMON:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

.field public static final enum FILE_IMAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

.field public static final enum FILE_LOATION:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

.field public static final enum FILE_VOICE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    const-string/jumbo v1, "FILE_COMMON"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_COMMON:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    .line 244
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    const-string/jumbo v1, "FILE_IMAGE"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_IMAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    .line 245
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    const-string/jumbo v1, "FILE_VOICE"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_VOICE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    .line 246
    new-instance v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    const-string/jumbo v1, "FILE_LOATION"

    const-string/jumbo v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_LOATION:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_COMMON:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_IMAGE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_VOICE:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->FILE_LOATION:Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "tmpValue"

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    iput-object p3, p0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->value:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData$FileType;->value:Ljava/lang/String;

    return-object v0
.end method
