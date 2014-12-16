.class Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;
.super Ljava/lang/Object;
.source "CMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Operator"
.end annotation


# instance fields
.field private op:Ljava/lang/String;

.field final synthetic this$0:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "theOp"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->this$0:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->op:Ljava/lang/String;

    .line 471
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;-><init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->op:Ljava/lang/String;

    return-object v0
.end method
