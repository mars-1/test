.class Lcom/cnlaunch/framework/common/parse/XmlMananger$1$1;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "XmlMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/common/parse/XmlMananger$1;->wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/framework/common/parse/XmlMananger$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/common/parse/XmlMananger$1;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger$1$1;->this$1:Lcom/cnlaunch/framework/common/parse/XmlMananger$1;

    .line 42
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .parameter "definedIn"
    .parameter "fieldName"

    .prologue
    .line 46
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
