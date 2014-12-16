.class Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$2;
.super Ljava/lang/Object;
.source "DiagnoseService.java"

# interfaces
.implements Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;


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
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$2;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRemoteDiagStatusCallback(I)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 120
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/launch/rcu/socket/SocketCall;->getCurrentVersion()I

    move-result v1

    .line 121
    .local v1, ver:I
    invoke-static {v4, v3, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$2;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #getter for: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$2(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->LoadLocalSO()V

    .line 127
    .end local v1           #ver:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$2;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendClientMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$0(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Landroid/os/Message;)V

    .line 128
    return-void

    .line 125
    :cond_0
    const/4 v2, 0x3

    invoke-static {v4, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
