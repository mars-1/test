.class public Lcom/itextpdf/text/pdf/PdfLayerMembership;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfLayerMembership.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfOCG;


# static fields
.field public static final ALLOFF:Lcom/itextpdf/text/pdf/PdfName;

.field public static final ALLON:Lcom/itextpdf/text/pdf/PdfName;

.field public static final ANYOFF:Lcom/itextpdf/text/pdf/PdfName;

.field public static final ANYON:Lcom/itextpdf/text/pdf/PdfName;


# instance fields
.field layers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation
.end field

.field members:Lcom/itextpdf/text/pdf/PdfArray;

.field ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v1, "AllOn"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->ALLON:Lcom/itextpdf/text/pdf/PdfName;

    .line 67
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v1, "AnyOn"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->ANYON:Lcom/itextpdf/text/pdf/PdfName;

    .line 71
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v1, "AnyOff"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->ANYOFF:Lcom/itextpdf/text/pdf/PdfName;

    .line 75
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v1, "AllOff"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->ALLOFF:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "writer"

    .prologue
    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCMD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 78
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->members:Lcom/itextpdf/text/pdf/PdfArray;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->layers:Ljava/util/HashSet;

    .line 87
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->members:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfLayerMembership;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 89
    return-void
.end method


# virtual methods
.method public addMember(Lcom/itextpdf/text/pdf/PdfLayer;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->layers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->members:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 106
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->layers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public getLayers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->layers:Ljava/util/HashSet;

    return-object v0
.end method

.method public getPdfObject()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 0

    .prologue
    .line 145
    return-object p0
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayerMembership;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public setVisibilityExpression(Lcom/itextpdf/text/pdf/PdfVisibilityExpression;)V
    .locals 1
    .parameter "ve"

    .prologue
    .line 137
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfLayerMembership;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 138
    return-void
.end method

.method public setVisibilityPolicy(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 125
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfLayerMembership;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 126
    return-void
.end method
