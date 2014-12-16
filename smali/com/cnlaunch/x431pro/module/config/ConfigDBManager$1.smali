.class Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;
.super Ljava/lang/Object;
.source "ConfigDBManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->saveConfig(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->val$list:Ljava/util/List;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, info:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    #getter for: Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->tag:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->access$0(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveConfig size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->val$list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->val$list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    #getter for: Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->tag:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->access$0(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "saveConfig OK!"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void

    .line 166
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;

    .line 167
    .local v0, bean:Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    #getter for: Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->access$1(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 168
    .local v4, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;>;"
    sget-object v6, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao$Properties;->Key:Lde/greenrobot/dao/Property;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    new-array v7, v10, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 169
    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, listOld:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    #getter for: Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->tag:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->access$0(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ConfigInfo size: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    .line 174
    .local v2, infoOld:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setValue(Ljava/lang/String;)V

    .line 176
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    #getter for: Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->access$1(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->update(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 179
    .end local v2           #infoOld:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    :cond_1
    new-instance v1, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;

    .end local v1           #info:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;-><init>()V

    .line 180
    .restart local v1       #info:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setKey(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfo;->setValue(Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager$1;->this$0:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    #getter for: Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->configInfoDao:Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->access$1(Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;)Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/cnlaunch/x431pro/module/config/db/ConfigInfoDao;->insert(Ljava/lang/Object;)J

    goto/16 :goto_0
.end method
