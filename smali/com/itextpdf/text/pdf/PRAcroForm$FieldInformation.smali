.class public Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
.super Ljava/lang/Object;
.source "PRAcroForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PRAcroForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldInformation"
.end annotation


# instance fields
.field info:Lcom/itextpdf/text/pdf/PdfDictionary;

.field name:Ljava/lang/String;

.field ref:Lcom/itextpdf/text/pdf/PRIndirectReference;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 0
    .parameter "name"
    .parameter "info"
    .parameter "ref"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->info:Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object p3, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->ref:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 68
    return-void
.end method


# virtual methods
.method public getInfo()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->info:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->ref:Lcom/itextpdf/text/pdf/PRIndirectReference;

    return-object v0
.end method
