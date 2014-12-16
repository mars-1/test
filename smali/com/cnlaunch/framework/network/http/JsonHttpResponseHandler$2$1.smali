.class Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

.field private final synthetic val$e:Ljava/lang/Throwable;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$jsonResponse:Ljava/lang/Object;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;Ljava/lang/Object;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    iput p3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$e:Ljava/lang/Throwable;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    #getter for: Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$e:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    #getter for: Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$e:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    #getter for: Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$statusCode:I

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$e:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    #getter for: Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    move-result-object v0

    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
