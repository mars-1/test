.class public final Lcom/thoughtworks/xstream/core/util/FastStack;
.super Ljava/lang/Object;
.source "FastStack.java"


# instance fields
.field private pointer:I

.field private stack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private resizeStack(I)V
    .locals 4
    .parameter "newCapacity"

    .prologue
    const/4 v3, 0x0

    .line 74
    new-array v0, p1, [Ljava/lang/Object;

    .line 75
    .local v0, newStack:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hasStuff()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 42
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    aget-object v0, v1, v2

    .line 43
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 44
    return-object v0
.end method

.method public popSilently()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 39
    return-void
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 30
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->resizeStack(I)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    aput-object p1, v0, v1

    .line 34
    return-object p1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 53
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 54
    return-object v0
.end method

.method public replaceSilently(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    if-ge v0, v2, :cond_1

    .line 82
    if-lez v0, :cond_0

    .line 83
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
