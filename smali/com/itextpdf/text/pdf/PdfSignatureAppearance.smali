.class public Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
.super Ljava/lang/Object;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$1;,
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;,
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;,
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;
    }
.end annotation


# static fields
.field public static final CERTIFIED_FORM_FILLING:I = 0x2

.field public static final CERTIFIED_FORM_FILLING_AND_ANNOTATIONS:I = 0x3

.field public static final CERTIFIED_NO_CHANGES_ALLOWED:I = 0x1

.field private static final MARGIN:F = 2.0f

.field public static final NOT_CERTIFIED:I = 0x0

.field public static final SELF_SIGNED:Lcom/itextpdf/text/pdf/PdfName; = null

.field private static final TOP_SECTION:F = 0.3f

.field public static final VERISIGN_SIGNED:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final WINCER_SIGNED:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final questionMark:Ljava/lang/String; = "% DSUnknown\nq\n1 G\n1 g\n0.1 0 0 0.1 9 0 cm\n0 J 0 j 4 M []0 d\n1 i \n0 g\n313 292 m\n313 404 325 453 432 529 c\n478 561 504 597 504 645 c\n504 736 440 760 391 760 c\n286 760 271 681 265 626 c\n265 625 l\n100 625 l\n100 828 253 898 381 898 c\n451 898 679 878 679 650 c\n679 555 628 499 538 435 c\n488 399 467 376 467 292 c\n313 292 l\nh\n308 214 170 -164 re\nf\n0.44 G\n1.2 w\n1 1 0.4 rg\n287 318 m\n287 430 299 479 406 555 c\n451 587 478 623 478 671 c\n478 762 414 786 365 786 c\n260 786 245 707 239 652 c\n239 651 l\n74 651 l\n74 854 227 924 355 924 c\n425 924 653 904 653 676 c\n653 581 602 525 512 461 c\n462 425 441 402 441 318 c\n287 318 l\nh\n282 240 170 -164 re\nB\nQ\n"


# instance fields
.field private acro6Layers:Z

.field private app:[Lcom/itextpdf/text/pdf/PdfTemplate;

.field private bout:[B

.field private boutLen:I

.field private certChain:[Ljava/security/cert/Certificate;

.field private certificationLevel:I

.field private contact:Ljava/lang/String;

.field private crlList:[Ljava/security/cert/CRL;

.field private cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private digestEncryptionAlgorithm:Ljava/lang/String;

.field private exclusionLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfLiteral;",
            ">;"
        }
    .end annotation
.end field

.field private externalDigest:[B

.field private externalRSAdata:[B

.field private fieldName:Ljava/lang/String;

.field private filter:Lcom/itextpdf/text/pdf/PdfName;

.field private frm:Lcom/itextpdf/text/pdf/PdfTemplate;

.field private image:Lcom/itextpdf/text/Image;

.field private imageScale:F

.field private layer2Font:Lcom/itextpdf/text/Font;

.field private layer2Text:Ljava/lang/String;

.field private layer4Text:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private newField:Z

.field private originalout:Ljava/io/OutputStream;

.field private page:I

.field private pageRect:Lcom/itextpdf/text/Rectangle;

.field private preClosed:Z

.field private privKey:Ljava/security/PrivateKey;

.field private provider:Ljava/lang/String;

.field private raf:Ljava/io/RandomAccessFile;

.field private range:[I

.field private reason:Ljava/lang/String;

.field private rect:Lcom/itextpdf/text/Rectangle;

.field private renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

.field private runDirection:I

.field private sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

.field private signDate:Ljava/util/Calendar;

.field private signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

.field private signatureGraphic:Lcom/itextpdf/text/Image;

.field private sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private stamper:Lcom/itextpdf/text/pdf/PdfStamper;

.field private tempFile:Ljava/io/File;

.field private writer:Lcom/itextpdf/text/pdf/PdfStamperImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKLITE:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->SELF_SIGNED:Lcom/itextpdf/text/pdf/PdfName;

    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VERISIGN_PPKVS:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->VERISIGN_SIGNED:Lcom/itextpdf/text/pdf/PdfName;

    .line 113
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKMS:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->WINCER_SIGNED:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfStamperImp;)V
    .locals 3
    .parameter "writer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfTemplate;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 132
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    .line 144
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    .line 161
    sget-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    .line 1385
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    .line 1477
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    .line 156
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 157
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    .line 158
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getNewSigName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method private addDocMDP(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 8
    .parameter "crypto"

    .prologue
    const/4 v7, 0x0

    .line 1122
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1123
    .local v1, reference:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1124
    .local v2, transformParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1125
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "1.2"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1126
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1127
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMMETHOD:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DOCMDP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1128
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SIGREF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1129
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1130
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v5, "DigestValue"

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v6, "aa"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1131
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1132
    .local v0, loc:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1133
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1134
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v5, "DigestLocation"

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1135
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v5, "DigestMethod"

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "MD5"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1136
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DATA:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v5, v5, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1137
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1138
    .local v3, types:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1139
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->REFERENCE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1140
    return-void
.end method

.method public static fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F
    .locals 23
    .parameter "font"
    .parameter "text"
    .parameter "rect"
    .parameter "maxFontSize"
    .parameter "runDirection"

    .prologue
    .line 635
    const/4 v13, 0x0

    .line 636
    .local v13, ct:Lcom/itextpdf/text/pdf/ColumnText;
    const/16 v21, 0x0

    .line 637
    .local v21, status:I
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_3

    .line 638
    const/4 v12, 0x0

    .line 639
    .local v12, cr:I
    const/16 v16, 0x0

    .line 640
    .local v16, lf:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    .line 641
    .local v22, t:[C
    const/4 v15, 0x0

    .local v15, k:I
    :goto_0
    move-object/from16 v0, v22

    array-length v4, v0

    if-ge v15, v4, :cond_2

    .line 642
    aget-char v4, v22, v15

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 643
    add-int/lit8 v16, v16, 0x1

    .line 641
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 644
    :cond_1
    aget-char v4, v22, v15

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 645
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 647
    :cond_2
    move/from16 v0, v16

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v19, v4, 0x1

    .line 648
    .local v19, minLines:I
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    const v5, 0x3a83126f

    sub-float p3, v4, v5

    .line 650
    .end local v12           #cr:I
    .end local v15           #k:I
    .end local v16           #lf:I
    .end local v19           #minLines:I
    .end local v22           #t:[C
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Font;->setSize(F)V

    .line 651
    new-instance v3, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 652
    .local v3, ph:Lcom/itextpdf/text/Phrase;
    new-instance v2, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .local v2, ct:Lcom/itextpdf/text/pdf/ColumnText;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v7

    const/4 v9, 0x0

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 654
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 655
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    .line 656
    and-int/lit8 v4, v21, 0x1

    if-eqz v4, :cond_5

    move/from16 v10, p3

    .line 677
    :cond_4
    :goto_2
    return v10

    .line 658
    :cond_5
    const v20, 0x3dcccccd

    .line 659
    .local v20, precision:F
    const/16 v18, 0x0

    .line 660
    .local v18, min:F
    move/from16 v17, p3

    .line 661
    .local v17, max:F
    move/from16 v10, p3

    .line 662
    .local v10, size:F
    const/4 v15, 0x0

    .restart local v15       #k:I
    move-object v13, v2

    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :goto_3
    const/16 v4, 0x32

    if-ge v15, v4, :cond_7

    .line 663
    add-float v4, v18, v17

    const/high16 v5, 0x4000

    div-float v10, v4, v5

    .line 664
    :try_start_2
    new-instance v2, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 665
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/Font;->setSize(F)V

    .line 666
    new-instance v5, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v9

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 667
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 668
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v21

    .line 669
    and-int/lit8 v4, v21, 0x1

    if-eqz v4, :cond_6

    .line 670
    sub-float v4, v17, v18

    mul-float v5, v10, v20

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 672
    move/from16 v18, v10

    .line 662
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object v13, v2

    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    goto :goto_3

    .line 675
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :cond_6
    move/from16 v17, v10

    goto :goto_4

    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :cond_7
    move-object v2, v13

    .line 677
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    goto :goto_2

    .line 679
    .end local v2           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v3           #ph:Lcom/itextpdf/text/Phrase;
    .end local v10           #size:F
    .end local v15           #k:I
    .end local v17           #max:F
    .end local v18           #min:F
    .end local v20           #precision:F
    .restart local v13       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :catch_0
    move-exception v14

    move-object v2, v13

    .line 680
    .end local v13           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v2       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .local v14, e:Ljava/lang/Exception;
    :goto_5
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v14}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 679
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v3       #ph:Lcom/itextpdf/text/Phrase;
    :catch_1
    move-exception v14

    goto :goto_5
.end method


# virtual methods
.method public close(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 13
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1071
    :try_start_0
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    if-nez v8, :cond_2

    .line 1072
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "preclose.must.be.called.first"

    invoke-static {v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-eqz v9, :cond_0

    .line 1112
    :try_start_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1113
    :goto_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v9, :cond_0

    .line 1114
    :try_start_2
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1116
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v9, :cond_1

    .line 1117
    :try_start_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    throw v8

    .line 1073
    :cond_2
    :try_start_4
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1074
    .local v0, bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 1075
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 1076
    .local v6, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 1077
    .local v5, lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    if-nez v5, :cond_3

    .line 1078
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "the.key.1.didn.t.reserve.space.in.preclose"

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1079
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 1080
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 1081
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v8

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 1082
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "the.key.1.is.too.big.is.2.reserved.3"

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1083
    :cond_4
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-nez v8, :cond_5

    .line 1084
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()I

    move-result v11

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1086
    :cond_5
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1087
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_3

    .line 1090
    .end local v3           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v5           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    .end local v6           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_7

    .line 1091
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "the.update.dictionary.has.less.keys.than.required"

    invoke-static {v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1092
    :cond_7
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-nez v8, :cond_b

    .line 1093
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    const/4 v10, 0x0

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->boutLen:I

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1111
    :cond_8
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-eqz v8, :cond_9

    .line 1112
    :try_start_5
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1113
    :goto_4
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v8, :cond_9

    .line 1114
    :try_start_6
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1116
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v8, :cond_a

    .line 1117
    :try_start_7
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1119
    :cond_a
    :goto_6
    return-void

    .line 1096
    :cond_b
    :try_start_8
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v8, :cond_8

    .line 1097
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1098
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v4, v8

    .line 1099
    .local v4, length:I
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 1100
    .local v1, buf:[B
    :goto_7
    if-lez v4, :cond_8

    .line 1101
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v8, v1, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    .line 1102
    .local v7, r:I
    if-gez v7, :cond_c

    .line 1103
    new-instance v8, Ljava/io/EOFException;

    const-string/jumbo v9, "unexpected.eof"

    invoke-static {v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1104
    :cond_c
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1105
    sub-int/2addr v4, v7

    .line 1106
    goto :goto_7

    .line 1117
    .end local v0           #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v1           #buf:[B
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #length:I
    .end local v7           #r:I
    :catch_0
    move-exception v9

    goto/16 :goto_2

    .line 1114
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 1112
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 1117
    .restart local v0       #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v8

    goto :goto_6

    .line 1114
    :catch_4
    move-exception v8

    goto :goto_5

    .line 1112
    :catch_5
    move-exception v8

    goto :goto_4
.end method

.method public getAppearance()Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isInvisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 389
    .local v3, t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 621
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :goto_0
    return-object v3

    .line 393
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-nez v4, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 395
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/high16 v6, 0x42c8

    const/high16 v7, 0x42c8

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v7, "n0"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 397
    const-string/jumbo v4, "% DSBlank\n"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setLiteral(Ljava/lang/String;)V

    .line 399
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x1

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 401
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/high16 v6, 0x42c8

    const/high16 v7, 0x42c8

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v7, "n1"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 403
    const-string/jumbo v4, "% DSUnknown\nq\n1 G\n1 g\n0.1 0 0 0.1 9 0 cm\n0 J 0 j 4 M []0 d\n1 i \n0 g\n313 292 m\n313 404 325 453 432 529 c\n478 561 504 597 504 645 c\n504 736 440 760 391 760 c\n286 760 271 681 265 626 c\n265 625 l\n100 625 l\n100 828 253 898 381 898 c\n451 898 679 878 679 650 c\n679 555 628 499 538 435 c\n488 399 467 376 467 292 c\n313 292 l\nh\n308 214 170 -164 re\nf\n0.44 G\n1.2 w\n1 1 0.4 rg\n287 318 m\n287 430 299 479 406 555 c\n451 587 478 623 478 671 c\n478 762 414 786 365 786 c\n260 786 245 707 239 652 c\n239 651 l\n74 651 l\n74 854 227 924 355 924 c\n425 924 653 904 653 676 c\n653 581 602 525 512 461 c\n462 425 441 402 441 318 c\n287 318 l\nh\n282 240 170 -164 re\nB\nQ\n"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setLiteral(Ljava/lang/String;)V

    .line 405
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    if-nez v4, :cond_8

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 408
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .local v33, buf:Ljava/lang/StringBuffer;
    const-string/jumbo v4, "Digitally signed by "

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certChain:[Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;

    move-result-object v4

    const-string/jumbo v7, "CN"

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    new-instance v43, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy.MM.dd HH:mm:ss z"

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    .local v43, sd:Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "Date: "

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 413
    const/16 v4, 0xa

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v6, "Reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 415
    const/16 v4, 0xa

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v6, "Location: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v49

    .line 420
    .end local v33           #buf:Ljava/lang/StringBuffer;
    .end local v43           #sd:Ljava/text/SimpleDateFormat;
    .local v49, text:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x2

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 421
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v7, "n2"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_d

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfTemplate;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 439
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    if-nez v4, :cond_f

    .line 440
    new-instance v35, Lcom/itextpdf/text/Font;

    invoke-direct/range {v35 .. v35}, Lcom/itextpdf/text/Font;-><init>()V

    .line 443
    .local v35, font:Lcom/itextpdf/text/Font;
    :goto_3
    invoke-virtual/range {v35 .. v35}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v46

    .line 445
    .local v46, size:F
    const/16 v34, 0x0

    .line 446
    .local v34, dataRect:Lcom/itextpdf/text/Rectangle;
    const/16 v44, 0x0

    .line 448
    .local v44, signatureRect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-eq v4, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-ne v4, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_10

    .line 451
    :cond_6
    new-instance v44, Lcom/itextpdf/text/Rectangle;

    .end local v44           #signatureRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    div-float/2addr v7, v12

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v44

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 456
    .restart local v44       #signatureRect:Lcom/itextpdf/text/Rectangle;
    new-instance v34, Lcom/itextpdf/text/Rectangle;

    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    const/high16 v6, 0x3f80

    add-float/2addr v4, v6

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x3f80

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 462
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    .line 463
    new-instance v44, Lcom/itextpdf/text/Rectangle;

    .end local v44           #signatureRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    move-object/from16 v0, v44

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 468
    .restart local v44       #signatureRect:Lcom/itextpdf/text/Rectangle;
    new-instance v34, Lcom/itextpdf/text/Rectangle;

    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 493
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    :cond_7
    :goto_4
    sget-object v4, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$1;->$SwitchMap$com$itextpdf$text$pdf$PdfSignatureAppearance$RenderingMode:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 550
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-eq v4, v6, :cond_8

    .line 551
    const/4 v4, 0x0

    cmpg-float v4, v46, v4

    if-gtz v4, :cond_1a

    .line 552
    new-instance v47, Lcom/itextpdf/text/Rectangle;

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 553
    .local v47, sr:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4140

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2, v4, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F

    move-result v24

    .line 555
    .end local v46           #size:F
    .end local v47           #sr:Lcom/itextpdf/text/Rectangle;
    .local v24, size:F
    :goto_6
    new-instance v18, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 556
    .local v18, ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 557
    new-instance v19, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v20

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v21

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v22

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v23

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v25}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 558
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    .line 561
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v18           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v24           #size:F
    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .end local v44           #signatureRect:Lcom/itextpdf/text/Rectangle;
    .end local v49           #text:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_9

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x3

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 563
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/high16 v6, 0x42c8

    const/high16 v7, 0x42c8

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v7, "n3"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 565
    const-string/jumbo v4, "% DSBlank\n"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setLiteral(Ljava/lang/String;)V

    .line 567
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x4

    aget-object v4, v4, v6

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_b

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x4

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 569
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v7

    const v12, 0x3f333333

    mul-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v13

    invoke-direct {v4, v6, v7, v12, v13}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v7, "n4"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    if-nez v4, :cond_13

    .line 573
    new-instance v35, Lcom/itextpdf/text/Font;

    invoke-direct/range {v35 .. v35}, Lcom/itextpdf/text/Font;-><init>()V

    .line 576
    .restart local v35       #font:Lcom/itextpdf/text/Font;
    :goto_7
    invoke-virtual/range {v35 .. v35}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v24

    .line 577
    .restart local v24       #size:F
    const-string/jumbo v49, "Signature Not Verified"

    .line 578
    .restart local v49       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 580
    :cond_a
    new-instance v47, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4080

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const v7, 0x3e99999a

    mul-float/2addr v6, v7

    const/high16 v7, 0x4080

    sub-float/2addr v6, v7

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 581
    .restart local v47       #sr:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4170

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2, v4, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F

    move-result v24

    .line 582
    new-instance v18, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 583
    .restart local v18       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 584
    new-instance v19, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    const/high16 v20, 0x4000

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4000

    sub-float v22, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    const/high16 v6, 0x4000

    sub-float v23, v4, v6

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v25}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 585
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    .line 587
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v18           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v24           #size:F
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .end local v47           #sr:Lcom/itextpdf/text/Rectangle;
    .end local v49           #text:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v41

    .line 588
    .local v41, rotation:I
    new-instance v40, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 589
    .local v40, rotated:Lcom/itextpdf/text/Rectangle;
    move/from16 v37, v41

    .line 590
    .local v37, n:I
    :goto_8
    if-lez v37, :cond_14

    .line 591
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Rectangle;->rotate()Lcom/itextpdf/text/Rectangle;

    move-result-object v40

    .line 592
    add-int/lit8 v37, v37, -0x5a

    goto :goto_8

    .line 419
    .end local v37           #n:I
    .end local v40           #rotated:Lcom/itextpdf/text/Rectangle;
    .end local v41           #rotation:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    move-object/from16 v49, v0

    .restart local v49       #text:Ljava/lang/String;
    goto/16 :goto_1

    .line 428
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    move/from16 v50, v0

    .line 429
    .local v50, usableScale:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_e

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v6}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v7}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v50

    .line 431
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v4

    mul-float v5, v4, v50

    .line 432
    .local v5, w:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v4

    mul-float v8, v4, v50

    .line 433
    .local v8, h:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    sub-float/2addr v4, v5

    const/high16 v6, 0x4000

    div-float v9, v4, v6

    .line 434
    .local v9, x:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    sub-float/2addr v4, v8

    const/high16 v6, 0x4000

    div-float v10, v4, v6

    .line 435
    .local v10, y:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfTemplate;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    goto/16 :goto_2

    .line 442
    .end local v5           #w:F
    .end local v8           #h:F
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v50           #usableScale:F
    :cond_f
    new-instance v35, Lcom/itextpdf/text/Font;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    .restart local v35       #font:Lcom/itextpdf/text/Font;
    goto/16 :goto_3

    .line 475
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    .restart local v44       #signatureRect:Lcom/itextpdf/text/Rectangle;
    .restart local v46       #size:F
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-ne v4, v6, :cond_12

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    if-nez v4, :cond_11

    .line 477
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "a.signature.image.should.be.present.when.rendering.mode.is.graphic.only"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 479
    :cond_11
    new-instance v44, Lcom/itextpdf/text/Rectangle;

    .end local v44           #signatureRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v44

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .restart local v44       #signatureRect:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_4

    .line 486
    :cond_12
    new-instance v34, Lcom/itextpdf/text/Rectangle;

    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const v13, 0x3f333333

    mul-float/2addr v12, v13

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_4

    .line 495
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certChain:[Ljava/security/cert/Certificate;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;

    move-result-object v4

    const-string/jumbo v6, "CN"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 496
    .local v45, signedBy:Ljava/lang/String;
    new-instance v48, Lcom/itextpdf/text/Rectangle;

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4000

    sub-float/2addr v4, v6

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const/high16 v7, 0x4000

    sub-float/2addr v6, v7

    move-object/from16 v0, v48

    invoke-direct {v0, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 497
    .local v48, sr2:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, -0x4080

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2, v4, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F

    move-result v17

    .line 499
    .local v17, signedSize:F
    new-instance v11, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 500
    .local v11, ct2:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 501
    new-instance v12, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-direct {v12, v0, v1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v13

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v14

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 503
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    goto/16 :goto_5

    .line 506
    .end local v11           #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v17           #signedSize:F
    .end local v45           #signedBy:Ljava/lang/String;
    .end local v48           #sr2:Lcom/itextpdf/text/Rectangle;
    :pswitch_1
    new-instance v11, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 507
    .restart local v11       #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 508
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v19

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v20

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v21

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v24}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFFFI)V

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    invoke-static {v4}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v36

    .line 511
    .local v36, im:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/Image;->scaleToFit(FF)V

    .line 513
    new-instance v39, Lcom/itextpdf/text/Paragraph;

    invoke-direct/range {v39 .. v39}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 515
    .local v39, p:Lcom/itextpdf/text/Paragraph;
    const/4 v9, 0x0

    .line 518
    .restart local v9       #x:F
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v6, 0x4170

    add-float v10, v4, v6

    .line 520
    .restart local v10       #y:F
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v9, v4

    .line 521
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    sub-float/2addr v10, v4

    .line 522
    new-instance v4, Lcom/itextpdf/text/Chunk;

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    const/4 v7, 0x0

    move-object/from16 v0, v36

    invoke-direct {v4, v0, v6, v10, v7}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FFZ)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 523
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 524
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    goto/16 :goto_5

    .line 527
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v36           #im:Lcom/itextpdf/text/Image;
    .end local v39           #p:Lcom/itextpdf/text/Paragraph;
    :pswitch_2
    new-instance v11, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 528
    .restart local v11       #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 529
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v19

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v20

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v21

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v24}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFFFI)V

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    invoke-static {v4}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v36

    .line 532
    .restart local v36       #im:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/Image;->scaleToFit(FF)V

    .line 534
    new-instance v39, Lcom/itextpdf/text/Paragraph;

    invoke-direct/range {v39 .. v39}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 536
    .restart local v39       #p:Lcom/itextpdf/text/Paragraph;
    const/4 v9, 0x0

    .line 539
    .restart local v9       #x:F
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v6, 0x4170

    add-float v10, v4, v6

    .line 541
    .restart local v10       #y:F
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v9, v4

    .line 542
    invoke-virtual/range {v44 .. v44}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    sub-float/2addr v10, v4

    .line 543
    new-instance v4, Lcom/itextpdf/text/Chunk;

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-direct {v4, v0, v9, v10, v6}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FFZ)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 544
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 545
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    goto/16 :goto_5

    .line 575
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .end local v36           #im:Lcom/itextpdf/text/Image;
    .end local v39           #p:Lcom/itextpdf/text/Paragraph;
    .end local v44           #signatureRect:Lcom/itextpdf/text/Rectangle;
    .end local v46           #size:F
    .end local v49           #text:Ljava/lang/String;
    :cond_13
    new-instance v35, Lcom/itextpdf/text/Font;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    .restart local v35       #font:Lcom/itextpdf/text/Font;
    goto/16 :goto_7

    .line 594
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .restart local v37       #n:I
    .restart local v40       #rotated:Lcom/itextpdf/text/Rectangle;
    .restart local v41       #rotation:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v4, :cond_17

    .line 595
    new-instance v4, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v12, "FRM"

    invoke-direct {v7, v12}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v6, 0x3f666666

    mul-float v42, v4, v6

    .line 599
    .local v42, scale:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    sub-float v4, v4, v42

    const/high16 v6, 0x4000

    div-float v9, v4, v6

    .line 600
    .restart local v9       #x:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    sub-float v4, v4, v42

    const/high16 v6, 0x4000

    div-float v10, v4, v6

    .line 601
    .restart local v10       #y:F
    const/high16 v4, 0x42c8

    div-float v42, v42, v4

    .line 602
    const/16 v4, 0x5a

    move/from16 v0, v41

    if-ne v0, v4, :cond_18

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f80

    const/high16 v28, -0x4080

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v25 .. v31}, Lcom/itextpdf/text/pdf/PdfTemplate;->concatCTM(FFFFFF)V

    .line 608
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v12}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 609
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_16

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x1

    aget-object v26, v4, v6

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v42

    move/from16 v30, v42

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-virtual/range {v25 .. v32}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 611
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v12}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 612
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_17

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x3

    aget-object v26, v4, v6

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v42

    move/from16 v30, v42

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-virtual/range {v25 .. v32}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v12}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 617
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v42           #scale:F
    :cond_17
    new-instance v38, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 618
    .local v38, napp:Lcom/itextpdf/text/pdf/PdfTemplate;
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    move-object/from16 v3, v38

    .line 621
    goto/16 :goto_0

    .line 604
    .end local v38           #napp:Lcom/itextpdf/text/pdf/PdfTemplate;
    .restart local v9       #x:F
    .restart local v10       #y:F
    .restart local v42       #scale:F
    :cond_18
    const/16 v4, 0xb4

    move/from16 v0, v41

    if-ne v0, v4, :cond_19

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    const/high16 v26, -0x4080

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, -0x4080

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v31

    invoke-virtual/range {v25 .. v31}, Lcom/itextpdf/text/pdf/PdfTemplate;->concatCTM(FFFFFF)V

    goto/16 :goto_9

    .line 606
    :cond_19
    const/16 v4, 0x10e

    move/from16 v0, v41

    if-ne v0, v4, :cond_15

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, -0x4080

    const/high16 v28, 0x3f80

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v31

    invoke-virtual/range {v25 .. v31}, Lcom/itextpdf/text/pdf/PdfTemplate;->concatCTM(FFFFFF)V

    goto/16 :goto_9

    .end local v9           #x:F
    .end local v10           #y:F
    .end local v37           #n:I
    .end local v40           #rotated:Lcom/itextpdf/text/Rectangle;
    .end local v41           #rotation:I
    .end local v42           #scale:F
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    .restart local v35       #font:Lcom/itextpdf/text/Font;
    .restart local v44       #signatureRect:Lcom/itextpdf/text/Rectangle;
    .restart local v46       #size:F
    .restart local v49       #text:Ljava/lang/String;
    :cond_1a
    move/from16 v24, v46

    .end local v46           #size:F
    .restart local v24       #size:F
    goto/16 :goto_6

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCertChain()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getCertificationLevel()I
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    return v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getCrlList()[Ljava/security/cert/CRL;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->crlList:[Ljava/security/cert/CRL;

    return-object v0
.end method

.method public getCryptoDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->filter:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method public getImage()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method public getImageScale()F
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    return v0
.end method

.method public getLayer(I)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 5
    .parameter "layer"

    .prologue
    .line 351
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 359
    :cond_1
    :goto_0
    return-object v0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    aget-object v0, v1, p1

    .line 354
    .local v0, t:Lcom/itextpdf/text/pdf/PdfTemplate;
    if-nez v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    .end local v0           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v0, v1, p1

    .line 356
    .restart local v0       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 357
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method public getLayer2Font()Lcom/itextpdf/text/Font;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    return-object v0
.end method

.method public getLayer2Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer4Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSigName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 863
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    .line 864
    .local v0, af:Lcom/itextpdf/text/pdf/AcroFields;
    const-string/jumbo v6, "Signature"

    .line 865
    .local v6, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 866
    .local v7, step:I
    const/4 v3, 0x0

    .line 867
    .local v3, found:Z
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 868
    add-int/lit8 v7, v7, 0x1

    .line 869
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 870
    .local v5, n1:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v8

    if-nez v8, :cond_0

    .line 872
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 873
    const/4 v3, 0x1

    .line 874
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, element:Ljava/lang/String;
    move-object v2, v1

    .line 875
    check-cast v2, Ljava/lang/String;

    .line 876
    .local v2, fn:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 877
    const/4 v3, 0x0

    .line 878
    goto :goto_0

    .line 882
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #fn:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #n1:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 883
    return-object v6
.end method

.method getOriginalout()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    return v0
.end method

.method public getPageRect()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public getPrivKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRangeStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 1149
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;-><init>(Ljava/io/RandomAccessFile;[B[ILcom/itextpdf/text/pdf/PdfSignatureAppearance$1;)V

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRect()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public getRenderingMode()Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    return v0
.end method

.method public getSigStandard()Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    return-object v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignatureEvent()Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    return-object v0
.end method

.method public getSignatureGraphic()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method getSigout()Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    return-object v0
.end method

.method public getStamper()Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public getTopLayer()Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 372
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 373
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v3, "FRM"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    return-object v0
.end method

.method public isAcro6Layers()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    return v0
.end method

.method public isInvisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewField()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->newField:Z

    return v0
.end method

.method public isPreClosed()Z
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    return v0
.end method

.method public preClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClose(Ljava/util/HashMap;)V

    .line 898
    return-void
.end method

.method public preClose(Ljava/util/HashMap;)V
    .locals 34
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 916
    .local p1, exclusionSizes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 917
    new-instance v29, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v30, "document.already.pre.closed"

    invoke-static/range {v30 .. v30}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 918
    :cond_0
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v4

    .line 920
    .local v4, af:Lcom/itextpdf/text/pdf/AcroFields;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFieldName()Ljava/lang/String;

    move-result-object v22

    .line 921
    .local v22, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isInvisible()Z

    move-result v29

    if-nez v29, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isNewField()Z

    move-result v29

    if-nez v29, :cond_8

    const/4 v13, 0x1

    .line 922
    .local v13, fieldExists:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v25

    .line 923
    .local v25, refSig:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setSigFlags(I)V

    .line 924
    if-eqz v13, :cond_9

    .line 925
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v28

    .line 926
    .local v28, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 927
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPage()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 928
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 929
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v28 .. v29}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v23

    .line 930
    .local v23, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v14, 0x0

    .line 931
    .local v14, flags:I
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 932
    check-cast v23, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v23           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v14

    .line 933
    :cond_1
    or-int/lit16 v14, v14, 0x80

    .line 934
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v30, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v30

    invoke-direct {v0, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual/range {v28 .. v30}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 935
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 936
    .local v5, ap:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 937
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 955
    .end local v5           #ap:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #flags:I
    .end local v28           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v29, v0

    if-nez v29, :cond_f

    .line 957
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKLITE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFilter()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 958
    new-instance v29, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getProvider()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    .line 965
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->externalDigest:[B

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->externalRSAdata:[B

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->digestEncryptionAlgorithm:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v29 .. v32}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setExternalDigest([B[BLjava/lang/String;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setReason(Ljava/lang/String;)V

    .line 968
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setLocation(Ljava/lang/String;)V

    .line 970
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setContact(Ljava/lang/String;)V

    .line 972
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->M:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v31, Lcom/itextpdf/text/pdf/PdfDate;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getSignDate()Ljava/util/Calendar;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/itextpdf/text/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual/range {v29 .. v31}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPrivKey()Ljava/security/PrivateKey;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getCertChain()[Ljava/security/cert/Certificate;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getCrlList()[Ljava/security/cert/CRL;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setSignInfo(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .line 975
    .local v9, contents:Lcom/itextpdf/text/pdf/PdfString;
    new-instance v20, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v30

    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKLITE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFilter()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    const/16 v29, 0x0

    :goto_3
    add-int v29, v29, v30

    mul-int/lit8 v29, v29, 0x2

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(I)V

    .line 976
    .local v20, lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 978
    new-instance v20, Lcom/itextpdf/text/pdf/PdfLiteral;

    .end local v20           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    const/16 v29, 0x50

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(I)V

    .line 979
    .restart local v20       #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    move/from16 v29, v0

    if-lez v29, :cond_5

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->addDocMDP(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 984
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;->getSignatureDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 986
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1005
    .end local v9           #contents:Lcom/itextpdf/text/pdf/PdfString;
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    move/from16 v29, v0

    if-lez v29, :cond_7

    .line 1007
    new-instance v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1008
    .local v10, docmdp:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v29, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v30, "DocMDP"

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    new-instance v30, Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v31, "Perms"

    invoke-direct/range {v30 .. v31}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1011
    .end local v10           #docmdp:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfStamper;->getMoreInfo()Ljava/util/HashMap;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfStamperImp;->close(Ljava/util/HashMap;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    mul-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()I

    move-result v8

    .line 1015
    .local v8, byteRangePosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const/16 v16, 0x1

    .line 1017
    .local v16, idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .end local v20           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    check-cast v20, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 1018
    .restart local v20       #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()I

    move-result v21

    .line 1019
    .local v21, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #idx:I
    .local v17, idx:I
    aput v21, v29, v16

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #idx:I
    .restart local v16       #idx:I
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v30

    add-int v30, v30, v21

    aput v30, v29, v17

    goto :goto_5

    .line 921
    .end local v8           #byteRangePosition:I
    .end local v13           #fieldExists:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #idx:I
    .end local v20           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    .end local v21           #n:I
    .end local v25           #refSig:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 940
    .restart local v13       #fieldExists:Z
    .restart local v25       #refSig:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfFormField;->createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v26

    .line 941
    .local v26, sigField:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 942
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 943
    const/16 v29, 0x84

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPage()I

    move-result v24

    .line 946
    .local v24, pagen:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isInvisible()Z

    move-result v29

    if-nez v29, :cond_a

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPageRect()Lcom/itextpdf/text/Rectangle;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 950
    :goto_6
    sget-object v29, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 951
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V

    goto/16 :goto_1

    .line 949
    :cond_a
    new-instance v29, Lcom/itextpdf/text/Rectangle;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_6

    .line 959
    .end local v24           #pagen:I
    .end local v26           #sigField:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_b
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFilter()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 960
    new-instance v29, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getProvider()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    goto/16 :goto_2

    .line 961
    :cond_c
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->VERISIGN_PPKVS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFilter()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 962
    new-instance v29, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getProvider()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigStandard:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    goto/16 :goto_2

    .line 964
    :cond_d
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "unknown.filter.1"

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFilter()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 975
    .restart local v9       #contents:Lcom/itextpdf/text/pdf/PdfString;
    :cond_e
    const/16 v29, 0x40

    goto/16 :goto_3

    .line 989
    .end local v9           #contents:Lcom/itextpdf/text/pdf/PdfString;
    :cond_f
    new-instance v20, Lcom/itextpdf/text/pdf/PdfLiteral;

    const/16 v29, 0x50

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(I)V

    .line 990
    .restart local v20       #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v29, v0

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 992
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 993
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/PdfName;

    .line 994
    .local v19, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 995
    .local v27, v:Ljava/lang/Integer;
    new-instance v20, Lcom/itextpdf/text/pdf/PdfLiteral;

    .end local v20           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(I)V

    .line 996
    .restart local v20       #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_7

    .line 999
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v19           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v27           #v:Ljava/lang/Integer;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    move/from16 v29, v0

    if-lez v29, :cond_11

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->addDocMDP(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1001
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_12

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;->getSignatureDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1003
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto/16 :goto_4

    .line 1022
    .restart local v8       #byteRangePosition:I
    .restart local v16       #idx:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    invoke-static/range {v29 .. v31}, Ljava/util/Arrays;->sort([III)V

    .line 1023
    const/16 v18, 0x3

    .local v18, k:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x2

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    aget v30, v29, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v31, v0

    add-int/lit8 v32, v18, -0x1

    aget v31, v31, v32

    sub-int v30, v30, v31

    aput v30, v29, v18

    .line 1023
    add-int/lit8 v18, v18, 0x2

    goto :goto_8

    .line 1026
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    move-object/from16 v29, v0

    if-nez v29, :cond_16

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->boutLen:I

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->boutLen:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x2

    aget v32, v32, v33

    sub-int v31, v31, v32

    aput v31, v29, v30

    .line 1030
    new-instance v6, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1031
    .local v6, bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v29, 0x5b

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1032
    const/16 v18, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    aget v29, v29, v18

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v29

    const/16 v30, 0x20

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1032
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 1034
    :cond_15
    const/16 v29, 0x5d

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1035
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    move-object/from16 v31, v0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v32

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    :goto_a
    return-void

    .line 1039
    .end local v6           #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_16
    :try_start_0
    new-instance v29, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    move-object/from16 v30, v0

    const-string/jumbo v31, "rw"

    invoke-direct/range {v29 .. v31}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v7, v0

    .line 1041
    .local v7, boutLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x2

    aget v31, v31, v32

    sub-int v31, v7, v31

    aput v31, v29, v30

    .line 1042
    new-instance v6, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1043
    .restart local v6       #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v29, 0x5b

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1044
    const/16 v18, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_17

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[I

    move-object/from16 v29, v0

    aget v29, v29, v18

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v29

    const/16 v30, 0x20

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1044
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1046
    :cond_17
    const/16 v29, 0x5d

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v29, v0

    int-to-long v0, v8

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v29, v0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v32

    invoke-virtual/range {v29 .. v32}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 1050
    .end local v6           #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v7           #boutLen:I
    :catch_0
    move-exception v11

    .line 1051
    .local v11, e:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1052
    :goto_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1053
    :goto_d
    throw v11

    .line 1052
    :catch_1
    move-exception v29

    goto :goto_d

    .line 1051
    :catch_2
    move-exception v29

    goto :goto_c
.end method

.method public setAcro6Layers(Z)V
    .locals 0
    .parameter "acro6Layers"

    .prologue
    .line 1245
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    .line 1246
    return-void
.end method

.method public setCertificationLevel(I)V
    .locals 0
    .parameter "certificationLevel"

    .prologue
    .line 1493
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    .line 1494
    return-void
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->contact:Ljava/lang/String;

    .line 1214
    return-void
.end method

.method public setCrypto(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 0
    .parameter "privKey"
    .parameter "certChain"
    .parameter "crlList"
    .parameter "filter"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->privKey:Ljava/security/PrivateKey;

    .line 261
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certChain:[Ljava/security/cert/Certificate;

    .line 262
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->crlList:[Ljava/security/cert/CRL;

    .line 263
    iput-object p4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->filter:Lcom/itextpdf/text/pdf/PdfName;

    .line 264
    return-void
.end method

.method public setCryptoDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "cryptoDictionary"

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1166
    return-void
.end method

.method public setExternalDigest([B[BLjava/lang/String;)V
    .locals 0
    .parameter "digest"
    .parameter "RSAdata"
    .parameter "digestEncryptionAlgorithm"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->externalDigest:[B

    .line 694
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->externalRSAdata:[B

    .line 695
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 696
    return-void
.end method

.method public setImage(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    .line 1294
    return-void
.end method

.method public setImageScale(F)V
    .locals 0
    .parameter "imageScale"

    .prologue
    .line 1312
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    .line 1313
    return-void
.end method

.method public setLayer2Font(Lcom/itextpdf/text/Font;)V
    .locals 0
    .parameter "layer2Font"

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    .line 1230
    return-void
.end method

.method public setLayer2Text(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setLayer4Text(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    .line 728
    return-void
.end method

.method setOriginalout(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "originalout"

    .prologue
    .line 843
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    .line 844
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->provider:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    .line 712
    return-void
.end method

.method public setRenderingMode(Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;)V
    .locals 0
    .parameter "renderingMode"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 179
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 1252
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 1253
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    .line 1255
    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 0
    .parameter "signDate"

    .prologue
    .line 827
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    .line 828
    return-void
.end method

.method public setSignatureEvent(Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;)V
    .locals 0
    .parameter "signatureEvent"

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    .line 1278
    return-void
.end method

.method public setSignatureGraphic(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "signatureGraphic"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    .line 199
    return-void
.end method

.method setSigout(Lcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 0
    .parameter "sigout"

    .prologue
    .line 835
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 836
    return-void
.end method

.method setStamper(Lcom/itextpdf/text/pdf/PdfStamper;)V
    .locals 0
    .parameter "stamper"

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    .line 1178
    return-void
.end method

.method setTempFile(Ljava/io/File;)V
    .locals 0
    .parameter "tempFile"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    .line 856
    return-void
.end method

.method public setVisibleSignature(Lcom/itextpdf/text/Rectangle;ILjava/lang/String;)V
    .locals 6
    .parameter "pageRect"
    .parameter "page"
    .parameter "fieldName"

    .prologue
    const/4 v5, 0x1

    .line 273
    if-eqz p3, :cond_2

    .line 274
    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "field.names.cannot.contain.a.dot"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    .line 277
    .local v0, af:Lcom/itextpdf/text/pdf/AcroFields;
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v1

    .line 278
    .local v1, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-eqz v1, :cond_1

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the.field.1.already.exists"

    invoke-static {v3, p3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_1
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 282
    .end local v0           #af:Lcom/itextpdf/text/pdf/AcroFields;
    .end local v1           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    :cond_2
    if-lt p2, v5, :cond_3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v2

    if-le p2, v2, :cond_4

    .line 283
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "invalid.page.number.1"

    invoke-static {v3, p2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_4
    new-instance v2, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    .line 285
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 286
    new-instance v2, Lcom/itextpdf/text/Rectangle;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    .line 287
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    .line 288
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->newField:Z

    .line 289
    return-void
.end method

.method public setVisibleSignature(Ljava/lang/String;)V
    .locals 18
    .parameter "fieldName"

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v2

    .line 297
    .local v2, af:Lcom/itextpdf/text/pdf/AcroFields;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 298
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_0

    .line 299
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "the.field.1.does.not.exist"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 300
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 301
    .local v6, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 302
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "the.field.1.is.not.a.signature.field"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 303
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 304
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 305
    .local v8, r:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    .line 306
    .local v4, llx:F
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    .line 307
    .local v5, lly:F
    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v10

    .line 308
    .local v10, urx:F
    const/4 v12, 0x3

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v11

    .line 309
    .local v11, ury:F
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v12, v4, v5, v10, v11}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 311
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v9

    .line 313
    .local v9, rotation:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(I)Lcom/itextpdf/text/Rectangle;

    move-result-object v7

    .line 314
    .local v7, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v9, :sswitch_data_0

    .line 337
    :goto_0
    if-eqz v9, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 339
    :cond_2
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    .line 340
    return-void

    .line 316
    :sswitch_0
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v13

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    goto :goto_0

    .line 323
    :sswitch_1
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    goto/16 :goto_0

    .line 330
    :sswitch_2
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v14

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    goto/16 :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
