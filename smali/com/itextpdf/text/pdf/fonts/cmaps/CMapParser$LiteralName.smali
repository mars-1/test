.class Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;
.super Ljava/lang/Object;
.source "CMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralName"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "theName"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->this$0:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->name:Ljava/lang/String;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;-><init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->name:Ljava/lang/String;

    return-object v0
.end method
