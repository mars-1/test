.class Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;
.super Ljava/util/ArrayList;
.source "CompositeClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;->this$0:Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "ref"

    .prologue
    .line 114
    check-cast p1, Ljava/lang/ref/WeakReference;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, classLoader:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 116
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 118
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, result:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 110
    :cond_0
    return v1
.end method
