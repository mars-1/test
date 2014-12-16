.class public Lcom/cnlaunch/newgolo/utils/ScreenManager;
.super Ljava/lang/Object;
.source "ScreenManager.java"


# static fields
.field private static instance:Lcom/cnlaunch/newgolo/utils/ScreenManager;


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/cnlaunch/newgolo/utils/ScreenManager;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->instance:Lcom/cnlaunch/newgolo/utils/ScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->instance:Lcom/cnlaunch/newgolo/utils/ScreenManager;

    return-object v0
.end method


# virtual methods
.method public current()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public pop()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 37
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 40
    :cond_0
    return-void
.end method

.method public pop(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public popAll()V
    .locals 1

    .prologue
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop()V

    goto :goto_0
.end method

.method public popClass(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 55
    .local v1, newStack:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/app/Activity;>;"
    iget-object v2, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    iput-object v1, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    .line 63
    return-void

    .line 55
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 56
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public push(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public retain(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 84
    .local v1, newStack:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/app/Activity;>;"
    iget-object v2, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iput-object v1, p0, Lcom/cnlaunch/newgolo/utils/ScreenManager;->stack:Ljava/util/Stack;

    .line 92
    return-void

    .line 84
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 85
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
