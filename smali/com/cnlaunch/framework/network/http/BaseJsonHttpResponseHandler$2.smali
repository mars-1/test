.class Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

.field private final synthetic val$e:Ljava/lang/Throwable;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$responseBody:Ljava/lang/String;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$responseBody:Ljava/lang/String;

    iput p3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$e:Ljava/lang/Throwable;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;)Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 143
    .local v6, jsonResponse:Ljava/lang/Object;,"TJSON_TYPE;"
    iget-object v8, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    new-instance v0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2$1;

    iget v2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$e:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$responseBody:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2$1;-><init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v6           #jsonResponse:Ljava/lang/Object;,"TJSON_TYPE;"
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, t:Ljava/lang/Throwable;
    const-string/jumbo v0, "BaseJsonHttpResponseHandler"

    const-string/jumbo v1, "parseResponse thrown an problem"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    iget-object v8, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    new-instance v0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2$2;

    iget v2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$e:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;->val$responseBody:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2$2;-><init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$2;I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
