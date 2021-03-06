.class Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;
.super Ljava/lang/Object;
.source "CGLIBEnhancedConverter.java"

# interfaces
.implements Lnet/sf/cglib/proxy/CallbackFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseEngineeredCallbackFilter"
.end annotation


# instance fields
.field private final callbackIndexMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "callbackIndexMap"

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;->callbackIndexMap:Ljava/util/Map;

    .line 478
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/reflect/Method;)I
    .locals 3
    .parameter "method"

    .prologue
    .line 481
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;->callbackIndexMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string/jumbo v1, "CGLIB callback not detected in reverse engineering"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, exception:Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string/jumbo v1, "CGLIB callback"

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    throw v0

    .line 487
    .end local v0           #exception:Lcom/thoughtworks/xstream/converters/ConversionException;
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;->callbackIndexMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
