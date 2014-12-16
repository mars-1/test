.class public Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;
.super Ljava/lang/Object;
.source "PdfPKCS7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfPKCS7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509Name"
.end annotation


# static fields
.field public static final C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static DefaultSymbols:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/bouncycastle/asn1/DERObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field public values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1488
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1493
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1498
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1503
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1508
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1513
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1518
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1523
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1526
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1528
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1530
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1532
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1534
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1540
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "1.2.840.113549.1.9.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1545
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->E:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1548
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1551
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    .line 1557
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->T:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->L:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->ST:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->SN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "SN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->UID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->SURNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->GIVENNAME:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->INITIALS:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    sget-object v0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->GENERATION:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string/jumbo v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "dirName"

    .prologue
    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    .line 1606
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v2, nTok:Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1609
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1610
    .local v3, token:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1612
    .local v1, index:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 1613
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "badly.formated.directory.string"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1616
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, id:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1618
    .local v4, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1619
    .local v5, vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 1620
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .restart local v5       #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1626
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #index:I
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8
    .parameter "seq"

    .prologue
    .line 1581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    .line 1582
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1584
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/bouncycastle/asn1/ASN1Set;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1585
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Set;

    .line 1587
    .local v4, set:Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1588
    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1589
    .local v3, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->DefaultSymbols:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1590
    .local v2, id:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1587
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1592
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1593
    .local v5, vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 1594
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .restart local v5       #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERString;

    invoke-interface {v6}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1600
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4           #set:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v5           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1630
    .local v0, vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFieldArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1639
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1640
    .local v0, vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #vs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
