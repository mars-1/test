.class Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$jsonResponse:Ljava/lang/Object;

.field private final synthetic val$responseBody:Ljava/lang/String;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->this$1:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;

    iput p2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$statusCode:I

    iput-object p3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$responseBody:Ljava/lang/String;

    iput-object p5, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->this$1:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;

    #getter for: Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;->access$0(Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1;)Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$statusCode:I

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$responseBody:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/framework/network/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method
