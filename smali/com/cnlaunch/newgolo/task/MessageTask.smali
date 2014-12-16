.class public abstract Lcom/cnlaunch/newgolo/task/MessageTask;
.super Ljava/lang/Object;
.source "MessageTask.java"


# static fields
.field protected static connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

.field protected static context:Landroid/content/Context;

.field protected static display:Landroid/util/DisplayMetrics;

.field protected static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/task/MessageTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 20
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sput-object v0, Lcom/cnlaunch/newgolo/task/MessageTask;->context:Landroid/content/Context;

    .line 21
    invoke-static {}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->getInstance()Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/task/MessageTask;->connection:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 22
    sget-object v0, Lcom/cnlaunch/newgolo/task/MessageTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/task/MessageTask;->display:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
