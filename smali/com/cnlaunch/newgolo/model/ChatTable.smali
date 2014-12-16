.class public final enum Lcom/cnlaunch/newgolo/model/ChatTable;
.super Ljava/lang/Enum;
.source "ChatTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/model/ChatTable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatTable; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "message"

.field public static URI:Landroid/net/Uri;

.field public static final enum content:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum expansion:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum flag:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum id:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum status:Lcom/cnlaunch/newgolo/model/ChatTable;

.field public static final enum time:Lcom/cnlaunch/newgolo/model/ChatTable;


# instance fields
.field private valueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "id"

    .line 11
    const-string/jumbo v2, "integer primary key autoincrement"

    invoke-direct {v0, v1, v4, v2}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->id:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 12
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "roomId"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v5, v2}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 13
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "roomType"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v6, v2}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 14
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "speakerId"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v7, v2}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 15
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "status"

    const-string/jumbo v2, "text"

    invoke-direct {v0, v1, v8, v2}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 16
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "flag"

    const/4 v2, 0x5

    const-string/jumbo v3, "text"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 17
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "time"

    const/4 v2, 0x6

    const-string/jumbo v3, "integer"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 18
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "content"

    const/4 v2, 0x7

    const-string/jumbo v3, "text"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->content:Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 19
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    const-string/jumbo v1, "expansion"

    const/16 v2, 0x8

    const-string/jumbo v3, "text"

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/model/ChatTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->expansion:Lcom/cnlaunch/newgolo/model/ChatTable;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/cnlaunch/newgolo/model/ChatTable;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->id:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->content:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->expansion:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatTable;

    .line 57
    const-string/jumbo v0, "content://com.cnlaunch.golopro.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "valueType"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/cnlaunch/newgolo/model/ChatTable;->valueType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static getCreateSQL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatTable;->values()[Lcom/cnlaunch/newgolo/model/ChatTable;

    move-result-object v1

    .line 40
    .local v1, list:[Lcom/cnlaunch/newgolo/model/ChatTable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v2, sql:Ljava/lang/StringBuilder;
    const-string/jumbo v3, "create table if not exists message("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 43
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    aget-object v3, v1, v0

    invoke-direct {v3}, Lcom/cnlaunch/newgolo/model/ChatTable;->getValueType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 47
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getDelSQL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "drop table if exists message"

    return-object v0
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatTable;->values()[Lcom/cnlaunch/newgolo/model/ChatTable;

    move-result-object v1

    .line 31
    .local v1, list:[Lcom/cnlaunch/newgolo/model/ChatTable;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 32
    .local v2, projection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 35
    return-object v2

    .line 33
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/ChatTable;->valueType:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatTable;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatTable;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/model/ChatTable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatTable;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/ChatTable;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
