.class Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;

.field private final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;

    #getter for: Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 175
    return-void
.end method
