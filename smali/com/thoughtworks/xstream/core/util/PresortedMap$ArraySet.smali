.class Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;
.super Ljava/util/ArrayList;
.source "PresortedMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/PresortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArraySet"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/core/util/PresortedMap$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySet;-><init>()V

    return-void
.end method
