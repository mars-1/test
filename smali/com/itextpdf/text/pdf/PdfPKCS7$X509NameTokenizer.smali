.class public Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;
.super Ljava/lang/Object;
.source "PdfPKCS7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfPKCS7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509NameTokenizer"
.end annotation


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "oid"

    .prologue
    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 1673
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->oid:Ljava/lang/String;

    .line 1674
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->index:I

    .line 1675
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .prologue
    .line 1678
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1682
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->index:I

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1683
    const/4 v4, 0x0

    .line 1723
    :goto_0
    return-object v4

    .line 1686
    :cond_0
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->index:I

    add-int/lit8 v1, v5, 0x1

    .line 1687
    .local v1, end:I
    const/4 v3, 0x0

    .line 1688
    .local v3, quoted:Z
    const/4 v2, 0x0

    .line 1690
    .local v2, escaped:Z
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1692
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_7

    .line 1693
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1695
    .local v0, c:C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_3

    .line 1696
    if-nez v2, :cond_2

    .line 1697
    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 1702
    :goto_2
    const/4 v2, 0x0

    .line 1719
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1720
    goto :goto_1

    :cond_1
    move v3, v4

    .line 1697
    goto :goto_2

    .line 1700
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1705
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 1706
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1707
    const/4 v2, 0x0

    goto :goto_3

    .line 1709
    :cond_5
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_6

    .line 1710
    const/4 v2, 0x1

    goto :goto_3

    .line 1712
    :cond_6
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_8

    .line 1722
    .end local v0           #c:C
    :cond_7
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->index:I

    .line 1723
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1716
    .restart local v0       #c:C
    :cond_8
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
