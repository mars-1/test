.class Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;
.super Ljava/lang/Object;
.source "XStream12FieldKeySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 31
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .local v0, fieldKey1:Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    move-object v1, p2

    .line 32
    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 33
    .local v1, fieldKey2:Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v3

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v4

    sub-int v2, v3, v4

    .line 34
    .local v2, i:I
    if-nez v2, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v3

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v4

    sub-int v2, v3, v4

    .line 37
    :cond_0
    return v2
.end method
