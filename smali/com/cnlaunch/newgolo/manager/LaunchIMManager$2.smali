.class Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;
.super Landroid/os/AsyncTask;
.source "LaunchIMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->saveUserInfoToDB(Lcom/cnlaunch/newgolo/model/LoginEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

.field private final synthetic val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;Lcom/cnlaunch/newgolo/model/LoginEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    .line 228
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "arg0"

    .prologue
    .line 232
    const/4 v6, 0x0

    .line 234
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v7, cv:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 236
    .local v11, user_id:J
    const/4 v9, 0x0

    .line 237
    .local v9, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/LoginEntity;->nick_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/LoginEntity;->nick_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v9, v1, Lcom/cnlaunch/newgolo/model/LoginEntity;->nick_name:Ljava/lang/String;

    .line 242
    :goto_0
    const-string/jumbo v1, "loginid"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    const-string/jumbo v1, "userid"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string/jumbo v1, "name"

    invoke-virtual {v7, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "headuri"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v2, v2, Lcom/cnlaunch/newgolo/model/LoginEntity;->face_url:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v1, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "userid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v13, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v13, v13, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    if-eqz v6, :cond_3

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    const-string/jumbo v2, "userid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #user_id:J
    :cond_1
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 240
    .restart local v7       #cv:Landroid/content/ContentValues;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #user_id:J
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$2;->val$loginEntity:Lcom/cnlaunch/newgolo/model/LoginEntity;

    iget-object v9, v1, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_name:Ljava/lang/String;

    goto :goto_0

    .line 253
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_3
    sget-object v1, Lcom/cnlaunch/newgolo/bean/UserInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 254
    .local v10, uri:Landroid/net/Uri;
    const-string/jumbo v1, "LunchIMManager"

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

    goto :goto_1

    .line 257
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #user_id:J
    :catch_0
    move-exception v8

    .line 258
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    if-eqz v6, :cond_1

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 259
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 260
    if-eqz v6, :cond_4

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_4
    throw v1
.end method
