.class Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;
.super Ljava/lang/Object;
.source "ObjectIdDictionary.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdWrapper"
.end annotation


# instance fields
.field private final hashCode:I

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;->hashCode:I

    .line 47
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;->obj:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;

    .end local p1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$IdWrapper;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
