.class public Lcom/thoughtworks/xstream/mapper/CGLIBMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "CGLIBMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/mapper/CGLIBMapper$Marker;
    }
.end annotation


# static fields
.field private static DEFAULT_NAMING_MARKER:Ljava/lang/String;


# instance fields
.field private final alias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "$$EnhancerByCGLIB$$"

    sput-object v0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .parameter "wrapped"

    .prologue
    .line 35
    const-string/jumbo v0, "CGLIB-enhanced-proxy"

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 0
    .parameter "wrapped"
    .parameter "alias"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 40
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "elementName"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper$Marker;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, serializedName:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 49
    .end local v0           #serializedName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 48
    .restart local v0       #serializedName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, typeName:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {p1}, Lnet/sf/cglib/proxy/Enhancer;->isEnhanced(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CGLIBMapper;->alias:Ljava/lang/String;

    goto :goto_0
.end method
