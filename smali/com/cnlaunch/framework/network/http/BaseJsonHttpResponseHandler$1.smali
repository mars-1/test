.class Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$responseBody:Ljava/lang/String;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    iput p3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;)Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 113
    .local v5, jsonResponse:Ljava/lang/Object;,"TJSON_TYPE;"
    iget-object v6, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    new-instance v0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;

    iget v2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;-><init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v5           #jsonResponse:Ljava/lang/Object;,"TJSON_TYPE;"
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v10

    .line 120
    .local v10, t:Ljava/lang/Throwable;
    const-string/jumbo v0, "BaseJsonHttpResponseHandler"

    const-string/jumbo v1, "parseResponse thrown an problem"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    new-instance v6, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$2;

    iget v8, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v9, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v11, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$2;-><init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
