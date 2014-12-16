.class Lcom/cnlaunch/newgolo/service/GoloProService$1;
.super Ljava/lang/Object;
.source "GoloProService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/service/GoloProService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/service/GoloProService;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/service/GoloProService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$1;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService$1;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/model/LoginMgr;->getLoginInfo(Landroid/content/Context;)Lcom/cnlaunch/newgolo/model/LoginEntity;

    move-result-object v7

    .line 111
    .local v7, entity:Lcom/cnlaunch/newgolo/model/LoginEntity;
    if-eqz v7, :cond_0

    .line 112
    const-string/jumbo v0, "GoloProService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "user_id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getInstance()Lcom/cnlaunch/newgolo/Http/HttpHelper;

    move-result-object v0

    iget-object v1, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    iget-object v2, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/Http/HttpHelper;->getLoginSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, sign:Ljava/lang/String;
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService$1;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    #getter for: Lcom/cnlaunch/newgolo/service/GoloProService;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$0(Lcom/cnlaunch/newgolo/service/GoloProService;)Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    move-result-object v0

    iget-object v1, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->ip:Ljava/lang/String;

    iget v2, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->port:I

    iget-object v3, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->user_id:Ljava/lang/String;

    iget-object v5, v7, Lcom/cnlaunch/newgolo/model/LoginEntity;->domain:Ljava/lang/String;

    const-string/jumbo v6, "android"

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->login(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
    .end packed-switch
.end method
