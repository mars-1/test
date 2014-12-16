.class Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;
.super Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.source "MyLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/utils/location/MyLocationManager;->sendLocation(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    .line 157
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->asyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$4(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    const/16 v1, 0x2725

    iget-object v2, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(ILcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 187
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 11
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$0(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v0

    const-class v1, Lcom/cnlaunch/framework/utils/location/LocationResponse;

    invoke-virtual {v0, p1, v1}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/framework/utils/location/LocationResponse;

    .line 166
    .local v8, res:Lcom/cnlaunch/framework/utils/location/LocationResponse;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/cnlaunch/framework/utils/location/LocationResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v8}, Lcom/cnlaunch/framework/utils/location/LocationResponse;->getResults()Ljava/util/List;

    move-result-object v7

    .line 168
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/location/LocationResults;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/utils/location/LocationResults;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/location/LocationResults;->getFormatted_address()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$1(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "network latitude: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D
    invoke-static {v4}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$2(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D
    invoke-static {v4}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$3(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->locationListener:Lcom/cnlaunch/framework/utils/location/MyLocationListener;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$0(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Lcom/cnlaunch/framework/utils/location/MyLocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->latitude:D
    invoke-static {v1}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$2(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->longitude:D
    invoke-static {v3}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$3(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)D

    move-result-wide v3

    invoke-interface/range {v0 .. v5}, Lcom/cnlaunch/framework/utils/location/MyLocationListener;->onLocation(DDLjava/lang/String;)V

    .line 181
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/location/LocationResults;>;"
    .end local v8           #res:Lcom/cnlaunch/framework/utils/location/LocationResponse;
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/MyLocationManager$1;->this$0:Lcom/cnlaunch/framework/utils/location/MyLocationManager;

    #getter for: Lcom/cnlaunch/framework/utils/location/MyLocationManager;->tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/framework/utils/location/MyLocationManager;->access$1(Lcom/cnlaunch/framework/utils/location/MyLocationManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "LocateManager MyLocationListener is not null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v6

    .line 179
    .local v6, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v6}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method
