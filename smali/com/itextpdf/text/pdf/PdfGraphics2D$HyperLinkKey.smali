.class public Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;
.super Ljava/awt/RenderingHints$Key;
.source "PdfGraphics2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfGraphics2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HyperLinkKey"
.end annotation


# static fields
.field public static final KEY_INSTANCE:Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;

.field public static final VALUE_HYPERLINKKEY_OFF:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1748
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;

    const/16 v1, 0x270f

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;->KEY_INSTANCE:Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;

    .line 1749
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/itextpdf/text/pdf/PdfGraphics2D$HyperLinkKey;->VALUE_HYPERLINKKEY_OFF:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1752
    invoke-direct {p0, p1}, Ljava/awt/RenderingHints$Key;-><init>(I)V

    .line 1753
    return-void
.end method


# virtual methods
.method public isCompatibleValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 1758
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1763
    const-string/jumbo v0, "HyperLinkKey"

    return-object v0
.end method
