.class public Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "ImmutableTypesMapper.java"


# instance fields
.field private final immutableTypes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .parameter "wrapped"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;->immutableTypes:Ljava/util/Set;

    .line 29
    return-void
.end method


# virtual methods
.method public addImmutableType(Ljava/lang/Class;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;->immutableTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;->immutableTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueType(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
