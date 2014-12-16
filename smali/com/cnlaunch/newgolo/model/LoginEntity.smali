.class public Lcom/cnlaunch/newgolo/model/LoginEntity;
.super Ljava/lang/Object;
.source "LoginEntity.java"


# instance fields
.field private content:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public face_url:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public port:I

.field public set_face_time:I

.field public signature:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "content"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->content:Ljava/lang/String;

    .line 31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, json:Lorg/json/JSONObject;
    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    .local v0, data:Lorg/json/JSONObject;
    const-string/jumbo v5, "user"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    .local v3, user:Lorg/json/JSONObject;
    const-string/jumbo v5, "xmpp"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 35
    .local v4, xmpp:Lorg/json/JSONObject;
    const-string/jumbo v5, "token"

    invoke-virtual {p0, v0, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->token:Ljava/lang/String;

    .line 36
    const-string/jumbo v5, "nick_name"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->nick_name:Ljava/lang/String;

    .line 37
    const-string/jumbo v5, "user_name"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_name:Ljava/lang/String;

    .line 38
    const-string/jumbo v5, "email"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->email:Ljava/lang/String;

    .line 39
    const-string/jumbo v5, "face_url"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->face_url:Ljava/lang/String;

    .line 40
    const-string/jumbo v5, "user_id"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    .line 41
    const-string/jumbo v5, "signature"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->signature:Ljava/lang/String;

    .line 42
    const-string/jumbo v5, "mobile"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->mobile:Ljava/lang/String;

    .line 43
    const-string/jumbo v5, "set_face_time"

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->set_face_time:I

    .line 44
    const-string/jumbo v5, "ip"

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->ip:Ljava/lang/String;

    .line 45
    const-string/jumbo v5, "port"

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->port:I

    .line 46
    const-string/jumbo v5, "domain"

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/newgolo/model/LoginEntity;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->domain:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #user:Lorg/json/JSONObject;
    .end local v4           #xmpp:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Login Argument must be json content"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LoginEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2
    .parameter "json"
    .parameter "tag"

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "json"
    .parameter "tag"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, value:Ljava/lang/String;
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 66
    .end local v1           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
