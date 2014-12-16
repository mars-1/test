.class public Ltest/db/TestConfig;
.super Ltest/BaseTestCase;
.source "TestConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ltest/BaseTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_getUrlByKey()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v2, p0, Ltest/db/TestConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v0

    .line 32
    .local v0, configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;
    sget-object v2, Lcom/cnlaunch/framework/common/KeyConstant;->public_expert_get_tech_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, url:Ljava/lang/String;
    const-string/jumbo v2, "test"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {v1}, Ltest/db/TestConfig;->assertNull(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
