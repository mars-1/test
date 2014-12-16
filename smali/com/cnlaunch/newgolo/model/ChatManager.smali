.class public Lcom/cnlaunch/newgolo/model/ChatManager;
.super Ljava/lang/Object;
.source "ChatManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatManager"

.field private static instance:Lcom/cnlaunch/newgolo/model/ChatManager;

.field public static resolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/cnlaunch/newgolo/model/ChatManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->instance:Lcom/cnlaunch/newgolo/model/ChatManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatManager;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/model/ChatManager;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->instance:Lcom/cnlaunch/newgolo/model/ChatManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->instance:Lcom/cnlaunch/newgolo/model/ChatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSelect([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "list"

    .prologue
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "roomId in("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 285
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 280
    :cond_0
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 282
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static replaceMsg(Ljava/util/ArrayList;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 128
    return-object v2

    .line 117
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 118
    .local v0, cm:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v3, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    iget-object v4, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    new-instance v3, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {v3, p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public clearMessageByMember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "groupId"
    .parameter "userId"

    .prologue
    .line 308
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/cnlaunch/newgolo/model/ChatManager;->clearMessageByRoom(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v1, "%s=\'%s\' and %s=\'%s\' and %s=\'%s\'"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 310
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatType;->group:Lcom/cnlaunch/newgolo/model/ChatType;

    aput-object v4, v2, v3

    .line 309
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, where:Ljava/lang/String;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public clearMessageByRoom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "roomId"
    .parameter "roomType"

    .prologue
    .line 316
    const-string/jumbo v1, "%s=\'%s\' and %s=\'%s\'"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 317
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 316
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, where:Ljava/lang/String;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public clearMessageByUser(Ljava/lang/String;)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 301
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/cnlaunch/newgolo/model/ChatManager;->clearMessageByRoom(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "%s=\'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, where:Ljava/lang/String;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public delDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->id:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=\'%s\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, where:Ljava/lang/String;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public delDBById(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->id:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=\'%s\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, where:Ljava/lang/String;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public getAllUnreadCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 165
    const-string/jumbo v0, "%s=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v7

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "count(flag)"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 175
    goto :goto_0
.end method

.method public getAllUnreadMsg()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 228
    const-string/jumbo v0, "%s=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 229
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v5, v1, v4

    .line 228
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public getAllUnreadOrHasLastTime()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 218
    const-string/jumbo v0, "%s=\'%s\' or %s!=0"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 219
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v4

    .line 218
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public getChatList(Lcom/cnlaunch/newgolo/model/ChatRoom;)Ljava/util/ArrayList;
    .locals 15
    .parameter "room"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/newgolo/model/ChatRoom;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=\'%s\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getType()Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    aput-object v4, v1, v2

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 79
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=\'%s\' order by %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getType()Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v4, v1, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, whereF:Ljava/lang/String;
    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatTable;->getProjection()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 94
    .local v11, cursorF:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 95
    .local v12, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    if-eqz v11, :cond_4

    .line 98
    :try_start_0
    invoke-static {v14, v11}, Lcom/cnlaunch/newgolo/model/ChatManager;->replaceMsg(Ljava/util/ArrayList;Landroid/database/Cursor;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 104
    if-eqz v11, :cond_1

    .line 105
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    :goto_1
    return-object v12

    .line 81
    .end local v7           #whereF:Ljava/lang/String;
    .end local v11           #cursorF:Landroid/database/Cursor;
    .end local v12           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    :cond_2
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {v0, v10}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 100
    .restart local v7       #whereF:Ljava/lang/String;
    .restart local v11       #cursorF:Landroid/database/Cursor;
    .restart local v12       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    :catch_0
    move-exception v13

    .line 101
    .local v13, e:Ljava/lang/Exception;
    move-object v12, v14

    .line 102
    :try_start_1
    const-string/jumbo v0, "ChatManager"

    const-string/jumbo v1, "query error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v11, :cond_1

    .line 105
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 103
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 104
    if-eqz v11, :cond_3

    .line 105
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_3
    throw v0

    .line 109
    :cond_4
    move-object v12, v14

    goto :goto_1
.end method

.method public getChatList(Lcom/cnlaunch/newgolo/model/ChatRoom;IJ)Ljava/util/ArrayList;
    .locals 11
    .parameter "room"
    .parameter "count"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/newgolo/model/ChatRoom;",
            "IJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/newgolo/model/ChatMessage;>;"
    const-string/jumbo v3, ""

    .line 144
    .local v3, where:Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=\'%s\' order by %s desc limit %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getType()Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    aput-object v2, v1, v8

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    .line 145
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 151
    :goto_0
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatTable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 154
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_0
    return-object v7

    .line 148
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<\'%s\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->status:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=\'%s\' order by %s desc limit %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getType()Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->init:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    aput-object v2, v1, v9

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v10

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 156
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    new-instance v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    invoke-direct {v0, v6}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLastMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;
    .locals 8
    .parameter "userId"
    .parameter "chatType"

    .prologue
    const/4 v2, 0x0

    .line 339
    const/4 v7, 0x0

    .line 340
    .local v7, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    const-string/jumbo v0, "%s=\'%s\' and %s=\'%s\' order by %s DESC limit 1"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 341
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object p2, v1, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v4

    .line 340
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 343
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v7, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .end local v7           #message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-direct {v7, v6}, Lcom/cnlaunch/newgolo/model/ChatMessage;-><init>(Landroid/database/Cursor;)V

    .line 349
    .restart local v7       #message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    return-object v7
.end method

.method public getLastMessageStamp()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 323
    const-wide/16 v7, -0x1

    .line 324
    .local v7, stamp:J
    const-string/jumbo v0, "%s!=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->speakerId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v9

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "max(time)"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 326
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 332
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_1
    return-wide v7
.end method

.method public getLastMsgTime(Ljava/lang/String;)J
    .locals 10
    .parameter "user_id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 239
    const-string/jumbo v0, "%s=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v9

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "time"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 244
    .local v7, time:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v7           #time:J
    :goto_0
    return-wide v7

    .line 247
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_1
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method public getListMsgLastTime([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "user_ids"

    .prologue
    const/4 v2, 0x0

    .line 270
    const/4 v6, 0x0

    .line 271
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/model/ChatManager;->getSelect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " group by roomId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    return-object v6
.end method

.method public getListUnreadCount([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "user_ids"

    .prologue
    .line 258
    const/4 v6, 0x0

    .line 259
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/model/ChatManager;->getSelect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " and flag=\'unread\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " group by roomId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "*"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "count(*) as count"

    aput-object v5, v2, v4

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    return-object v6
.end method

.method public getUnreadNumber(Ljava/lang/String;)I
    .locals 9
    .parameter "user_id"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 199
    const-string/jumbo v0, "%s=\'%s\' and %s=\'%s\'"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 200
    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    const/4 v2, 0x2

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v5, v1, v2

    .line 199
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    .line 202
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v5, "count(flag)"

    aput-object v5, v2, v7

    move-object v5, v4

    .line 201
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 206
    .local v7, number:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 211
    .end local v7           #number:I
    :cond_0
    :goto_0
    return v7

    .line 209
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getUnreadNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "roomId"
    .parameter "roomType"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    const-string/jumbo v0, "%s=\'%s\' and %s=\'%s\' and %s=\'%s\'"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    const/4 v2, 0x2

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v5, v1, v2

    .line 180
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v5, "count(flag)"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 191
    goto :goto_0
.end method

.method public insertDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)J
    .locals 4
    .parameter "message"

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 41
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertDBVoid(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 48
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 49
    return-void
.end method

.method public markAsRead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "roomId"
    .parameter "roomType"

    .prologue
    .line 292
    const-string/jumbo v2, "%s=\'%s\' and %s=\'%s\' and %s=\'%s\'"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 293
    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->roomType:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->unread:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    aput-object v5, v3, v4

    .line 292
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v0, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->flag:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->read:Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/model/ChatMessage$FLAG;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 54
    .local v0, values:Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatTable;->id:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=\'%s\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatManager;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    return-void
.end method
