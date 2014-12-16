.class public Lcom/cnlaunch/newgolo/Tool/X431SendMessageTool;
.super Ljava/lang/Object;
.source "X431SendMessageTool.java"


# instance fields
.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/X431SendMessageTool;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method
