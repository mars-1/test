.class public Lcom/cnlaunch/newgolo/bean/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field public static final HEAD_URI:Ljava/lang/String; = "headuri"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOGIN_ID:Ljava/lang/String; = "loginid"

.field public static final TABLE_NAME:Ljava/lang/String; = "users"

.field private static final TAG:Ljava/lang/String; = "UserInfo"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final URI:Landroid/net/Uri; = null

.field public static final USERINFO_UPDATE_MIN_TIME:J = 0x5265c00L

.field public static final USER_ID:Ljava/lang/String; = "userid"

.field public static final USER_NAME:Ljava/lang/String; = "name"


# instance fields
.field public head_uri:Ljava/lang/String;

.field public login_id:J

.field public name:Ljava/lang/String;

.field public time:J

.field public user_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "content://com.cnlaunch.newgolo.userinfo/users"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "loginid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->login_id:J

    .line 44
    const-string/jumbo v0, "userid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    .line 45
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "headuri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J

    .line 48
    return-void
.end method

.method public static deleteAll(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, result:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, cv:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 148
    :goto_0
    return v2

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHeadPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "userId"

    .prologue
    .line 113
    const/4 v9, 0x0

    .line 114
    .local v9, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, cv:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 117
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "userid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const-string/jumbo v1, "headuri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, headUri:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 122
    move-object v9, v8

    .line 128
    .end local v8           #headUri:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    :goto_0
    return-object v9

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 128
    if-eqz v6, :cond_2

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_2
    throw v1
.end method

.method public static getUserinfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cnlaunch/newgolo/bean/UserInfo;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 87
    const/4 v8, 0x0

    .line 88
    .local v8, userInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, cv:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 91
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "userid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    new-instance v9, Lcom/cnlaunch/newgolo/bean/UserInfo;

    invoke-direct {v9, v6}, Lcom/cnlaunch/newgolo/bean/UserInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #userInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .local v9, userInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;
    move-object v8, v9

    .line 99
    .end local v9           #userInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v8       #userInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    :goto_0
    return-object v8

    .line 96
    :catch_0
    move-exception v7

    .line 97
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 98
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 99
    if-eqz v6, :cond_2

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_2
    throw v1
.end method

.method public static getUserinfoFormServer(Landroid/content/Context;Ljava/lang/String;)Lcom/cnlaunch/newgolo/bean/UserInfo;
    .locals 12
    .parameter "mContext"
    .parameter "userId"

    .prologue
    .line 165
    const/4 v8, 0x0

    .line 167
    .local v8, result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v6, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 168
    .local v6, locale:Ljava/util/Locale;
    invoke-static {}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getInstance()Lcom/cnlaunch/golo3/http/HttpInfoProvider;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p1}, Lcom/cnlaunch/golo3/http/HttpInfoProvider;->getUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, response:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 170
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v5, json:Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, code:I
    if-nez v0, :cond_0

    .line 173
    new-instance v9, Lcom/cnlaunch/newgolo/bean/UserInfo;

    invoke-direct {v9}, Lcom/cnlaunch/newgolo/bean/UserInfo;-><init>()V
    :try_end_0
    .catch Lcom/cnlaunch/newgolo/exception/DecodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    .end local v8           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .local v9, result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v10, "data"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, data:Lorg/json/JSONObject;
    const-string/jumbo v10, "thumb"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, head_thumb:Ljava/lang/String;
    const-string/jumbo v10, "url"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, head:Ljava/lang/String;
    const-string/jumbo v10, "nick_name"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    .line 178
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .end local v4           #head_thumb:Ljava/lang/String;
    :goto_0
    iput-object v4, v9, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    .line 180
    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/cnlaunch/newgolo/bean/UserInfo;->login_id:J

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J
    :try_end_1
    .catch Lcom/cnlaunch/newgolo/exception/DecodeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 191
    .end local v0           #code:I
    .end local v1           #data:Lorg/json/JSONObject;
    .end local v3           #head:Ljava/lang/String;
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v7           #response:Ljava/lang/String;
    .end local v9           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v8       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :cond_0
    :goto_1
    return-object v8

    .end local v8           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v0       #code:I
    .restart local v1       #data:Lorg/json/JSONObject;
    .restart local v3       #head:Ljava/lang/String;
    .restart local v4       #head_thumb:Ljava/lang/String;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v7       #response:Ljava/lang/String;
    .restart local v9       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :cond_1
    move-object v4, v3

    .line 178
    goto :goto_0

    .line 184
    .end local v0           #code:I
    .end local v1           #data:Lorg/json/JSONObject;
    .end local v3           #head:Ljava/lang/String;
    .end local v4           #head_thumb:Ljava/lang/String;
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v7           #response:Ljava/lang/String;
    .end local v9           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v8       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Lcom/cnlaunch/newgolo/exception/DecodeException;
    :goto_2
    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/exception/DecodeException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v2           #e:Lcom/cnlaunch/newgolo/exception/DecodeException;
    :catch_1
    move-exception v2

    .line 188
    .local v2, e:Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v2           #e:Lorg/json/JSONException;
    .end local v8           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v0       #code:I
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v7       #response:Ljava/lang/String;
    .restart local v9       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :catch_2
    move-exception v2

    move-object v8, v9

    .end local v9           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v8       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    goto :goto_3

    .line 184
    .end local v8           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v9       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    :catch_3
    move-exception v2

    move-object v8, v9

    .end local v9           #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    .restart local v8       #result:Lcom/cnlaunch/newgolo/bean/UserInfo;
    goto :goto_2
.end method

.method public static update(Landroid/content/Context;Lcom/cnlaunch/newgolo/bean/UserInfo;)V
    .locals 14
    .parameter "context"
    .parameter "info"

    .prologue
    .line 55
    const/4 v6, 0x0

    .line 56
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v7, cv:Landroid/content/ContentValues;
    const-string/jumbo v1, "loginid"

    iget-wide v2, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->login_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    const-string/jumbo v1, "userid"

    iget-wide v2, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string/jumbo v1, "name"

    iget-object v2, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "headuri"

    iget-object v2, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "time"

    iget-wide v2, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "userid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    iget-wide v12, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const-string/jumbo v2, "userid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, i:I
    const-string/jumbo v1, "UserInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", info.head_uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v9           #i:I
    :goto_0
    if-eqz v6, :cond_0

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-void

    .line 69
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 70
    .local v10, uri:Landroid/net/Uri;
    const-string/jumbo v1, "UserInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "insertUri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 74
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    if-eqz v6, :cond_0

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 75
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 76
    if-eqz v6, :cond_2

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_2
    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserInfo [login_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->login_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", head_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->head_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-wide v1, p0, Lcom/cnlaunch/newgolo/bean/UserInfo;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
