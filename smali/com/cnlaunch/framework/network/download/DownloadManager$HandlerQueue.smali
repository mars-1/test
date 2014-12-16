.class Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/framework/network/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerQueue"
.end annotation


# instance fields
.field private handlerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/framework/network/download/DownloadManager;)V
    .locals 1
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    .line 546
    return-void
.end method


# virtual methods
.method public get(I)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
    .locals 1
    .parameter "position"

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    goto :goto_0
.end method

.method public offer(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public poll()Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    return-object v0
.end method

.method public remove(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->get(I)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
