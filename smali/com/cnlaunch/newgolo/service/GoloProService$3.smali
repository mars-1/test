.class Lcom/cnlaunch/newgolo/service/GoloProService$3;
.super Landroid/content/BroadcastReceiver;
.source "GoloProService.java"


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$3;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    .line 230
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 233
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 235
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 236
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 237
    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService$3;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    const/4 v3, 0x0

    #calls: Lcom/cnlaunch/newgolo/service/GoloProService;->login(Z)V
    invoke-static {v2, v3}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$4(Lcom/cnlaunch/newgolo/service/GoloProService;Z)V

    .line 244
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService$3;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    #getter for: Lcom/cnlaunch/newgolo/service/GoloProService;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$0(Lcom/cnlaunch/newgolo/service/GoloProService;)Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/cnlaunch/newgolo/service/GoloProService$3;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    #getter for: Lcom/cnlaunch/newgolo/service/GoloProService;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$0(Lcom/cnlaunch/newgolo/service/GoloProService;)Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    goto :goto_0
.end method
