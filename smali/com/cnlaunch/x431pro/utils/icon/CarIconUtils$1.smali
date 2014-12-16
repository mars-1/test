.class Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;
.super Ljava/lang/Object;
.source "CarIconUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->initCarIcon()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 96
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$0(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$0(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$0(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_1
    return-void

    .line 97
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 98
    .local v1, itemList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 100
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    new-instance v5, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    invoke-direct {v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;-><init>()V

    #setter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2, v5}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$1(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;Lcom/cnlaunch/x431pro/utils/db/CarIcon;)V

    .line 101
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSerialNo(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "softPackageId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSoftPackageId(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setName(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "name_zh"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setName_zh(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIcon(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "areaId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setAreaId(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "sname"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSname(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    const-string/jumbo v2, "sname_zh"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSname_zh(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setMaxversion(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVersionlist(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIsDownload(Ljava/lang/Boolean;)V

    .line 112
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v2

    const-string/jumbo v5, "EN"

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setLanguageList(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVehiclePath(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$3(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-result-object v2

    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;->this$0:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    #getter for: Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->insert(Ljava/lang/Object;)J

    goto/16 :goto_0
.end method
