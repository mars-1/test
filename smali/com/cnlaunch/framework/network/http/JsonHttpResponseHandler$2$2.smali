.class Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;
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

.field private final synthetic val$ex:Lorg/json/JSONException;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    iput p2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->val$statusCode:I

    iput-object p3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;

    #getter for: Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->val$statusCode:I

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 214
    return-void
.end method
