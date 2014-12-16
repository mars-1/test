.class Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$1;
.super Ljava/lang/Object;
.source "DiagnoseService.java"

# interfaces
.implements Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$1;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnoseJsonCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 101
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 106
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$1;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendClientMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$0(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Landroid/os/Message;)V

    .line 108
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$1;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 109
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v2

    invoke-virtual {v2, p2, v4}, Lcom/launch/rcu/socket/SocketCall;->sendRemoteData(Ljava/lang/String;I)V

    .line 111
    :cond_0
    return-void
.end method
