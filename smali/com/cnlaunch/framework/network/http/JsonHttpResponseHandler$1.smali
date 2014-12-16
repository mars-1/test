.class Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$responseBody:Ljava/lang/String;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    iput p3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, jsonResponse:Ljava/lang/Object;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    new-instance v3, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$1;

    iget v4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$1;-><init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;Ljava/lang/Object;I[Lorg/apache/http/Header;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, ex:Lorg/json/JSONException;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    new-instance v3, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;

    invoke-direct {v3, p0, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1$2;-><init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
