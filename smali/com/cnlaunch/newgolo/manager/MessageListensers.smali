.class public Lcom/cnlaunch/newgolo/manager/MessageListensers;
.super Ljava/lang/Object;
.source "MessageListensers.java"


# static fields
.field private static messageHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/handler/MessageHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/manager/MessageListensers;->messageHandlers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V
    .locals 1
    .parameter "messageHandler"

    .prologue
    .line 18
    sget-object v0, Lcom/cnlaunch/newgolo/manager/MessageListensers;->messageHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public static getMessageHandlers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/newgolo/handler/MessageHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/cnlaunch/newgolo/manager/MessageListensers;->messageHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V
    .locals 1
    .parameter "messageHandler"

    .prologue
    .line 23
    sget-object v0, Lcom/cnlaunch/newgolo/manager/MessageListensers;->messageHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
