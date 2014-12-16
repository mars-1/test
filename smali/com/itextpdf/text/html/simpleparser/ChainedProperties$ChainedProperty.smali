.class final Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
.super Ljava/lang/Object;
.source "ChainedProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/html/simpleparser/ChainedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChainedProperty"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final property:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, property:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;->key:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;->property:Ljava/util/HashMap;

    .line 61
    return-void
.end method
