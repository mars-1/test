.class Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

.field private final synthetic val$e:Ljava/lang/Throwable;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$responseBody:Ljava/lang/String;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$responseBody:Ljava/lang/String;

    iput p3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$e:Ljava/lang/Throwable;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, jsonResponse:Ljava/lang/Object;
    iget-object v7, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    new-instance v0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;

    iget v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$e:Ljava/lang/Throwable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$1;-><init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;Ljava/lang/Object;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v6

    .line 210
    .local v6, ex:Lorg/json/JSONException;
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;

    new-instance v1, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;

    iget v3, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    invoke-direct {v1, p0, v3, v4, v6}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2$2;-><init>(Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler$2;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
