.class public Ltest/module/diagnose/TestAskRemoteAction;
.super Ltest/BaseTestCase;
.source "TestAskRemoteAction.java"


# instance fields
.field private pwd:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    .line 11
    const-string/jumbo v0, "SandaFury"

    iput-object v0, p0, Ltest/module/diagnose/TestAskRemoteAction;->userName:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "zsdzsd"

    iput-object v0, p0, Ltest/module/diagnose/TestAskRemoteAction;->pwd:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public test_getCarInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 15
    iget-object v2, p0, Ltest/module/diagnose/TestAskRemoteAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/diagnose/TestAskRemoteAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/diagnose/TestAskRemoteAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;

    invoke-virtual {p0}, Ltest/module/diagnose/TestAskRemoteAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, action:Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;
    const-string/jumbo v2, "901012"

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->getRemoteServiceAddress(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;

    move-result-object v1

    .line 23
    .local v1, remoteServiceInfoResponse:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    return-void
.end method
