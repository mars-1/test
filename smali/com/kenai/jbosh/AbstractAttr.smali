.class abstract Lcom/kenai/jbosh/AbstractAttr;
.super Ljava/lang/Object;
.source "AbstractAttr.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/kenai/jbosh/AbstractAttr;,"Lcom/kenai/jbosh/AbstractAttr<TT;>;"
    .local p1, aValue:Ljava/lang/Comparable;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "otherObj"

    .prologue
    .line 109
    .local p0, this:Lcom/kenai/jbosh/AbstractAttr;,"Lcom/kenai/jbosh/AbstractAttr<TT;>;"
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "otherObj"

    .prologue
    .local p0, this:Lcom/kenai/jbosh/AbstractAttr;,"Lcom/kenai/jbosh/AbstractAttr<TT;>;"
    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    instance-of v2, p1, Lcom/kenai/jbosh/AbstractAttr;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/kenai/jbosh/AbstractAttr;

    .line 72
    .local v0, other:Lcom/kenai/jbosh/AbstractAttr;
    iget-object v1, p0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    iget-object v2, v0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/kenai/jbosh/AbstractAttr;,"Lcom/kenai/jbosh/AbstractAttr<TT;>;"
    iget-object v0, p0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/kenai/jbosh/AbstractAttr;,"Lcom/kenai/jbosh/AbstractAttr<TT;>;"
    iget-object v0, p0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/kenai/jbosh/AbstractAttr;,"Lcom/kenai/jbosh/AbstractAttr<TT;>;"
    iget-object v0, p0, Lcom/kenai/jbosh/AbstractAttr;->value:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
