.class public Lcom/itextpdf/text/pdf/PdfDeveloperExtension;
.super Ljava/lang/Object;
.source "PdfDeveloperExtension.java"


# static fields
.field public static final ADOBE_1_7_EXTENSIONLEVEL3:Lcom/itextpdf/text/pdf/PdfDeveloperExtension;


# instance fields
.field protected baseversion:Lcom/itextpdf/text/pdf/PdfName;

.field protected extensionLevel:I

.field protected prefix:Lcom/itextpdf/text/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ADBE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_7:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->ADOBE_1_7_EXTENSIONLEVEL3:Lcom/itextpdf/text/pdf/PdfDeveloperExtension;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;I)V
    .locals 0
    .parameter "prefix"
    .parameter "baseversion"
    .parameter "extensionLevel"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->prefix:Lcom/itextpdf/text/pdf/PdfName;

    .line 81
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->baseversion:Lcom/itextpdf/text/pdf/PdfName;

    .line 82
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->extensionLevel:I

    .line 83
    return-void
.end method


# virtual methods
.method public getBaseversion()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->baseversion:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method public getDeveloperExtensions()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 116
    .local v0, developerextensions:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BASEVERSION:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->baseversion:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 117
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->EXTENSIONLEVEL:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->extensionLevel:I

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 118
    return-object v0
.end method

.method public getExtensionLevel()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->extensionLevel:I

    return v0
.end method

.method public getPrefix()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->prefix:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method
