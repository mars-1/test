.class Lcom/cnlaunch/framework/common/parse/XmlMananger$1;
.super Lcom/thoughtworks/xstream/XStream;
.source "XmlMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/common/parse/XmlMananger;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/common/parse/XmlMananger;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/common/parse/XmlMananger;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger$1;->this$0:Lcom/cnlaunch/framework/common/parse/XmlMananger;

    .line 39
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method


# virtual methods
.method protected wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .locals 1
    .parameter "next"

    .prologue
    .line 42
    new-instance v0, Lcom/cnlaunch/framework/common/parse/XmlMananger$1$1;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/framework/common/parse/XmlMananger$1$1;-><init>(Lcom/cnlaunch/framework/common/parse/XmlMananger$1;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v0
.end method
