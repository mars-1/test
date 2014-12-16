.class public Ltest/module/mine/TestConnectorAction;
.super Ltest/BaseTestCase;
.source "TestConnectorAction.java"


# instance fields
.field private productType:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    .line 26
    const-string/jumbo v0, "anqitest"

    iput-object v0, p0, Ltest/module/mine/TestConnectorAction;->userName:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "123456"

    iput-object v0, p0, Ltest/module/mine/TestConnectorAction;->pwd:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "X431 Pro"

    iput-object v0, p0, Ltest/module/mine/TestConnectorAction;->productType:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public test_getProductRegisterTime()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v3, p0, Ltest/module/mine/TestConnectorAction;->userName:Ljava/lang/String;

    iget-object v4, p0, Ltest/module/mine/TestConnectorAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ltest/module/mine/TestConnectorAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, serialNoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "982690424200"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string/jumbo v3, "982690423900"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string/jumbo v3, "982691355000"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {p0}, Ltest/module/mine/TestConnectorAction;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getProductRegisterTime(Ljava/util/List;)Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    move-result-object v1

    .line 78
    .local v1, response:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ltest/module/mine/TestConnectorAction;->assertEquals(II)V

    .line 79
    return-void
.end method

.method public test_getRegisteredProductsForPad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v2, p0, Ltest/module/mine/TestConnectorAction;->userName:Ljava/lang/String;

    iget-object v3, p0, Ltest/module/mine/TestConnectorAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ltest/module/mine/TestConnectorAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {p0}, Ltest/module/mine/TestConnectorAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;
    iget-object v2, p0, Ltest/module/mine/TestConnectorAction;->productType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getRegisteredProductsForPad(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    move-result-object v1

    .line 43
    .local v1, response:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltest/module/mine/TestConnectorAction;->assertEquals(II)V

    .line 44
    return-void
.end method

.method public test_registerProductForPad()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v5, p0, Ltest/module/mine/TestConnectorAction;->userName:Ljava/lang/String;

    iget-object v6, p0, Ltest/module/mine/TestConnectorAction;->pwd:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Ltest/module/mine/TestConnectorAction;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v3, "982690424200"

    .line 55
    .local v3, serialNo:Ljava/lang/String;
    const-string/jumbo v4, "86X"

    .line 56
    .local v4, venderCode:Ljava/lang/String;
    const-string/jumbo v1, "67701346"

    .line 58
    .local v1, password:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {p0}, Ltest/module/mine/TestConnectorAction;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;
    invoke-virtual {v0, v3, v4, v1}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->registerProductForPad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v2

    .line 60
    .local v2, response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ltest/module/mine/TestConnectorAction;->assertEquals(II)V

    .line 61
    return-void
.end method
