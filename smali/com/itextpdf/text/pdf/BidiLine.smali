.class public Lcom/itextpdf/text/pdf/BidiLine;
.super Ljava/lang/Object;
.source "BidiLine.java"


# static fields
.field protected static final mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;


# instance fields
.field protected arabicOptions:I

.field protected chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation
.end field

.field protected currentChar:I

.field protected detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

.field protected indexChars:[I

.field protected indexChunk:I

.field protected indexChunkChar:I

.field protected orderLevels:[B

.field protected pieceSize:I

.field protected runDirection:I

.field protected shortStore:Z

.field protected storedCurrentChar:I

.field protected storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

.field protected storedIndexChars:[I

.field protected storedIndexChunk:I

.field protected storedIndexChunkChar:I

.field protected storedOrderLevels:[B

.field protected storedRunDirection:I

.field protected storedText:[C

.field protected storedTotalTextLength:I

.field protected text:[C

.field protected totalTextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/16 v2, 0x29

    const/16 v1, 0x28

    const/16 v3, 0x2a2c

    .line 85
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 622
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 623
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 624
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 625
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 626
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 627
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x5d

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 628
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x7b

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 629
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x7d

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 630
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0xab

    const/16 v2, 0xbb

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 631
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0xbb

    const/16 v2, 0xab

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 632
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2039

    const/16 v2, 0x203a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 633
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x203a

    const/16 v2, 0x2039

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 634
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2045

    const/16 v2, 0x2046

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 635
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2046

    const/16 v2, 0x2045

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 636
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x207d

    const/16 v2, 0x207e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 637
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x207e

    const/16 v2, 0x207d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 638
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x208d

    const/16 v2, 0x208e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 639
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x208e

    const/16 v2, 0x208d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 640
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2208

    const/16 v2, 0x220b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 641
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2209

    const/16 v2, 0x220c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 642
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x220a

    const/16 v2, 0x220d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 643
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x220b

    const/16 v2, 0x2208

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 644
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x220c

    const/16 v2, 0x2209

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 645
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x220d

    const/16 v2, 0x220a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 646
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2215

    const/16 v2, 0x29f5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 647
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x223c

    const/16 v2, 0x223d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 648
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x223d

    const/16 v2, 0x223c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 649
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2243

    const/16 v2, 0x22cd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 650
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2252

    const/16 v2, 0x2253

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 651
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2253

    const/16 v2, 0x2252

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 652
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2254

    const/16 v2, 0x2255

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 653
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2255

    const/16 v2, 0x2254

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 654
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2264

    const/16 v2, 0x2265

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 655
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2265

    const/16 v2, 0x2264

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 656
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2266

    const/16 v2, 0x2267

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 657
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2267

    const/16 v2, 0x2266

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 658
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2268

    const/16 v2, 0x2269

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 659
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2269

    const/16 v2, 0x2268

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 660
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x226a

    const/16 v2, 0x226b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 661
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x226b

    const/16 v2, 0x226a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 662
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x226e

    const/16 v2, 0x226f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 663
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x226f

    const/16 v2, 0x226e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 664
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2270

    const/16 v2, 0x2271

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 665
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2271

    const/16 v2, 0x2270

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 666
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2272

    const/16 v2, 0x2273

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 667
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2273

    const/16 v2, 0x2272

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 668
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2274

    const/16 v2, 0x2275

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 669
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2275

    const/16 v2, 0x2274

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 670
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2276

    const/16 v2, 0x2277

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 671
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2277

    const/16 v2, 0x2276

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 672
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2278

    const/16 v2, 0x2279

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 673
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2279

    const/16 v2, 0x2278

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 674
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x227a

    const/16 v2, 0x227b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 675
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x227b

    const/16 v2, 0x227a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 676
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x227c

    const/16 v2, 0x227d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 677
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x227d

    const/16 v2, 0x227c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 678
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x227e

    const/16 v2, 0x227f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 679
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x227f

    const/16 v2, 0x227e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 680
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2280

    const/16 v2, 0x2281

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 681
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2281

    const/16 v2, 0x2280

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 682
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2282

    const/16 v2, 0x2283

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 683
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2283

    const/16 v2, 0x2282

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 684
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2284

    const/16 v2, 0x2285

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 685
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2285

    const/16 v2, 0x2284

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 686
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2286

    const/16 v2, 0x2287

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 687
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2287

    const/16 v2, 0x2286

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 688
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2288

    const/16 v2, 0x2289

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 689
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2289

    const/16 v2, 0x2288

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 690
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x228a

    const/16 v2, 0x228b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 691
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x228b

    const/16 v2, 0x228a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 692
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x228f

    const/16 v2, 0x2290

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 693
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2290

    const/16 v2, 0x228f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 694
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2291

    const/16 v2, 0x2292

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 695
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2292

    const/16 v2, 0x2291

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 696
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2298

    const/16 v2, 0x29b8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 697
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22a2

    const/16 v2, 0x22a3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 698
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22a3

    const/16 v2, 0x22a2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 699
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22a6

    const/16 v2, 0x2ade

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 700
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22a8

    const/16 v2, 0x2ae4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 701
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22a9

    const/16 v2, 0x2ae3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 702
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22ab

    const/16 v2, 0x2ae5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 703
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b0

    const/16 v2, 0x22b1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 704
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b1

    const/16 v2, 0x22b0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 705
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b2

    const/16 v2, 0x22b3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 706
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b3

    const/16 v2, 0x22b2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 707
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b4

    const/16 v2, 0x22b5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 708
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b5

    const/16 v2, 0x22b4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 709
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b6

    const/16 v2, 0x22b7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 710
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22b7

    const/16 v2, 0x22b6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 711
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22c9

    const/16 v2, 0x22ca

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 712
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22ca

    const/16 v2, 0x22c9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 713
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22cb

    const/16 v2, 0x22cc

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 714
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22cc

    const/16 v2, 0x22cb

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 715
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22cd

    const/16 v2, 0x2243

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 716
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22d0

    const/16 v2, 0x22d1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 717
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22d1

    const/16 v2, 0x22d0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 718
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22d6

    const/16 v2, 0x22d7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 719
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22d7

    const/16 v2, 0x22d6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 720
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22d8

    const/16 v2, 0x22d9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 721
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22d9

    const/16 v2, 0x22d8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 722
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22da

    const/16 v2, 0x22db

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 723
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22db

    const/16 v2, 0x22da

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 724
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22dc

    const/16 v2, 0x22dd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 725
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22dd

    const/16 v2, 0x22dc

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 726
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22de

    const/16 v2, 0x22df

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 727
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22df

    const/16 v2, 0x22de

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 728
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e0

    const/16 v2, 0x22e1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 729
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e1

    const/16 v2, 0x22e0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 730
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e2

    const/16 v2, 0x22e3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 731
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e3

    const/16 v2, 0x22e2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 732
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e4

    const/16 v2, 0x22e5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 733
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e5

    const/16 v2, 0x22e4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 734
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e6

    const/16 v2, 0x22e7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 735
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e7

    const/16 v2, 0x22e6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 736
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e8

    const/16 v2, 0x22e9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 737
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22e9

    const/16 v2, 0x22e8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 738
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22ea

    const/16 v2, 0x22eb

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 739
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22eb

    const/16 v2, 0x22ea

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 740
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22ec

    const/16 v2, 0x22ed

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 741
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22ed

    const/16 v2, 0x22ec

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 742
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f0

    const/16 v2, 0x22f1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 743
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f1

    const/16 v2, 0x22f0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 744
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f2

    const/16 v2, 0x22fa

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 745
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f3

    const/16 v2, 0x22fb

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 746
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f4

    const/16 v2, 0x22fc

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 747
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f6

    const/16 v2, 0x22fd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 748
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22f7

    const/16 v2, 0x22fe

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 749
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22fa

    const/16 v2, 0x22f2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 750
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22fb

    const/16 v2, 0x22f3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 751
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22fc

    const/16 v2, 0x22f4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 752
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22fd

    const/16 v2, 0x22f6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 753
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x22fe

    const/16 v2, 0x22f7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 754
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2308

    const/16 v2, 0x2309

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 755
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2309

    const/16 v2, 0x2308

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 756
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x230a

    const/16 v2, 0x230b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 757
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x230b

    const/16 v2, 0x230a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 758
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2329

    const/16 v2, 0x232a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 759
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x232a

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 760
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2768

    const/16 v2, 0x2769

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 761
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2769

    const/16 v2, 0x2768

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 762
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x276a

    const/16 v2, 0x276b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 763
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x276b

    const/16 v2, 0x276a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 764
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x276c

    const/16 v2, 0x276d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 765
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x276d

    const/16 v2, 0x276c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 766
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x276e

    const/16 v2, 0x276f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 767
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x276f

    const/16 v2, 0x276e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 768
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2770

    const/16 v2, 0x2771

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 769
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2771

    const/16 v2, 0x2770

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 770
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2772

    const/16 v2, 0x2773

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 771
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2773

    const/16 v2, 0x2772

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 772
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2774

    const/16 v2, 0x2775

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 773
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2775

    const/16 v2, 0x2774

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 774
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27d5

    const/16 v2, 0x27d6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 775
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27d6

    const/16 v2, 0x27d5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 776
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27dd

    const/16 v2, 0x27de

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 777
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27de

    const/16 v2, 0x27dd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 778
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e2

    const/16 v2, 0x27e3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 779
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e3

    const/16 v2, 0x27e2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 780
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e4

    const/16 v2, 0x27e5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 781
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e5

    const/16 v2, 0x27e4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 782
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e6

    const/16 v2, 0x27e7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 783
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e7

    const/16 v2, 0x27e6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 784
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e8

    const/16 v2, 0x27e9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 785
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27e9

    const/16 v2, 0x27e8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 786
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27ea

    const/16 v2, 0x27eb

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 787
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x27eb

    const/16 v2, 0x27ea

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 788
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2983

    const/16 v2, 0x2984

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 789
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2984

    const/16 v2, 0x2983

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 790
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2985

    const/16 v2, 0x2986

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 791
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2986

    const/16 v2, 0x2985

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 792
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2987

    const/16 v2, 0x2988

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 793
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2988

    const/16 v2, 0x2987

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 794
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2989

    const/16 v2, 0x298a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 795
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x298a

    const/16 v2, 0x2989

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 796
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x298b

    const/16 v2, 0x298c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 797
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x298c

    const/16 v2, 0x298b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 798
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x298d

    const/16 v2, 0x2990

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 799
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x298e

    const/16 v2, 0x298f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 800
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x298f

    const/16 v2, 0x298e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 801
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2990

    const/16 v2, 0x298d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 802
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2991

    const/16 v2, 0x2992

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 803
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2992

    const/16 v2, 0x2991

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 804
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2993

    const/16 v2, 0x2994

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 805
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2994

    const/16 v2, 0x2993

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 806
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2995

    const/16 v2, 0x2996

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 807
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2996

    const/16 v2, 0x2995

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 808
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2997

    const/16 v2, 0x2998

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 809
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2998

    const/16 v2, 0x2997

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 810
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29b8

    const/16 v2, 0x2298

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 811
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29c0

    const/16 v2, 0x29c1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 812
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29c1

    const/16 v2, 0x29c0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 813
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29c4

    const/16 v2, 0x29c5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 814
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29c5

    const/16 v2, 0x29c4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 815
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29cf

    const/16 v2, 0x29d0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 816
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d0

    const/16 v2, 0x29cf

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 817
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d1

    const/16 v2, 0x29d2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 818
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d2

    const/16 v2, 0x29d1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 819
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d4

    const/16 v2, 0x29d5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 820
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d5

    const/16 v2, 0x29d4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 821
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d8

    const/16 v2, 0x29d9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 822
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29d9

    const/16 v2, 0x29d8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 823
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29da

    const/16 v2, 0x29db

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 824
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29db

    const/16 v2, 0x29da

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 825
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29f5

    const/16 v2, 0x2215

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 826
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29f8

    const/16 v2, 0x29f9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 827
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29f9

    const/16 v2, 0x29f8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 828
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29fc

    const/16 v2, 0x29fd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 829
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x29fd

    const/16 v2, 0x29fc

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 830
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a2b

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 831
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a2b

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 832
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a2d

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 833
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a2e

    const/16 v2, 0x2a2d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 834
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a34

    const/16 v2, 0x2a35

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 835
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a35

    const/16 v2, 0x2a34

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 836
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a3c

    const/16 v2, 0x2a3d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 837
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a3d

    const/16 v2, 0x2a3c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 838
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a64

    const/16 v2, 0x2a65

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 839
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a65

    const/16 v2, 0x2a64

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 840
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a79

    const/16 v2, 0x2a7a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 841
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a7a

    const/16 v2, 0x2a79

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 842
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a7d

    const/16 v2, 0x2a7e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 843
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a7e

    const/16 v2, 0x2a7d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 844
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a7f

    const/16 v2, 0x2a80

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 845
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a80

    const/16 v2, 0x2a7f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 846
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a81

    const/16 v2, 0x2a82

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 847
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a82

    const/16 v2, 0x2a81

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 848
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a83

    const/16 v2, 0x2a84

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 849
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a84

    const/16 v2, 0x2a83

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 850
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a8b

    const/16 v2, 0x2a8c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 851
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a8c

    const/16 v2, 0x2a8b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 852
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a91

    const/16 v2, 0x2a92

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 853
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a92

    const/16 v2, 0x2a91

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 854
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a93

    const/16 v2, 0x2a94

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 855
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a94

    const/16 v2, 0x2a93

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 856
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a95

    const/16 v2, 0x2a96

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 857
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a96

    const/16 v2, 0x2a95

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 858
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a97

    const/16 v2, 0x2a98

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 859
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a98

    const/16 v2, 0x2a97

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 860
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a99

    const/16 v2, 0x2a9a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 861
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a9a

    const/16 v2, 0x2a99

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 862
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a9b

    const/16 v2, 0x2a9c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 863
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2a9c

    const/16 v2, 0x2a9b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 864
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aa1

    const/16 v2, 0x2aa2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 865
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aa2

    const/16 v2, 0x2aa1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 866
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aa6

    const/16 v2, 0x2aa7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 867
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aa7

    const/16 v2, 0x2aa6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 868
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aa8

    const/16 v2, 0x2aa9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 869
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aa9

    const/16 v2, 0x2aa8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 870
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aaa

    const/16 v2, 0x2aab

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 871
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aab

    const/16 v2, 0x2aaa

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 872
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aac

    const/16 v2, 0x2aad

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 873
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aad

    const/16 v2, 0x2aac

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 874
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aaf

    const/16 v2, 0x2ab0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 875
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ab0

    const/16 v2, 0x2aaf

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 876
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ab3

    const/16 v2, 0x2ab4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 877
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ab4

    const/16 v2, 0x2ab3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 878
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2abb

    const/16 v2, 0x2abc

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 879
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2abc

    const/16 v2, 0x2abb

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 880
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2abd

    const/16 v2, 0x2abe

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 881
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2abe

    const/16 v2, 0x2abd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 882
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2abf

    const/16 v2, 0x2ac0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 883
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac0

    const/16 v2, 0x2abf

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 884
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac1

    const/16 v2, 0x2ac2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 885
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac2

    const/16 v2, 0x2ac1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 886
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac3

    const/16 v2, 0x2ac4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 887
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac4

    const/16 v2, 0x2ac3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 888
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac5

    const/16 v2, 0x2ac6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 889
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ac6

    const/16 v2, 0x2ac5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 890
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2acd

    const/16 v2, 0x2ace

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 891
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ace

    const/16 v2, 0x2acd

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 892
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2acf

    const/16 v2, 0x2ad0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 893
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad0

    const/16 v2, 0x2acf

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 894
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad1

    const/16 v2, 0x2ad2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 895
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad2

    const/16 v2, 0x2ad1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 896
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad3

    const/16 v2, 0x2ad4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 897
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad4

    const/16 v2, 0x2ad3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 898
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad5

    const/16 v2, 0x2ad6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 899
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ad6

    const/16 v2, 0x2ad5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 900
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ade

    const/16 v2, 0x22a6

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 901
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ae3

    const/16 v2, 0x22a9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 902
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ae4

    const/16 v2, 0x22a8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 903
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2ae5

    const/16 v2, 0x22ab

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 904
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aec

    const/16 v2, 0x2aed

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 905
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2aed

    const/16 v2, 0x2aec

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 906
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2af7

    const/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 907
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2af8

    const/16 v2, 0x2af7

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 908
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2af9

    const/16 v2, 0x2afa

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 909
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x2afa

    const/16 v2, 0x2af9

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 910
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3008

    const/16 v2, 0x3009

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 911
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3009

    const/16 v2, 0x3008

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 912
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x300a

    const/16 v2, 0x300b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 913
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x300b

    const/16 v2, 0x300a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 914
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x300c

    const/16 v2, 0x300d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 915
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x300d

    const/16 v2, 0x300c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 916
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x300e

    const/16 v2, 0x300f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 917
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x300f

    const/16 v2, 0x300e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 918
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3010

    const/16 v2, 0x3011

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 919
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3011

    const/16 v2, 0x3010

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 920
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3014

    const/16 v2, 0x3015

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 921
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3015

    const/16 v2, 0x3014

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 922
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3016

    const/16 v2, 0x3017

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 923
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3017

    const/16 v2, 0x3016

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 924
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3018

    const/16 v2, 0x3019

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 925
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x3019

    const/16 v2, 0x3018

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 926
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x301a

    const/16 v2, 0x301b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 927
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v1, 0x301b

    const/16 v2, 0x301a

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 928
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff08

    const v2, 0xff09

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 929
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff09

    const v2, 0xff08

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 930
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff1c

    const v2, 0xff1e

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 931
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff1e

    const v2, 0xff1c

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 932
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff3b

    const v2, 0xff3d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 933
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff3d

    const v2, 0xff3b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 934
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff5b

    const v2, 0xff5d

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 935
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff5d

    const v2, 0xff5b

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 936
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff5f

    const v2, 0xff60

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 937
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff60

    const v2, 0xff5f

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 938
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff62

    const v2, 0xff63

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 939
    sget-object v0, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    const v1, 0xff63

    const v2, 0xff62

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 940
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x100

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    .line 59
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    .line 60
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 61
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 63
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    .line 64
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    .line 68
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 69
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 72
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    .line 73
    new-array v0, v1, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 74
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedTotalTextLength:I

    .line 76
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    .line 77
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunk:I

    .line 80
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunkChar:I

    .line 81
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedCurrentChar:I

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BidiLine;)V
    .locals 2
    .parameter "org"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x100

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    .line 59
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    .line 60
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 61
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 63
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    .line 64
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    .line 68
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 69
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 72
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    .line 73
    new-array v0, v1, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 74
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedTotalTextLength:I

    .line 76
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    .line 77
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunk:I

    .line 80
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunkChar:I

    .line 81
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedCurrentChar:I

    .line 93
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    .line 94
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    .line 95
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    .line 96
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/PdfChunk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 97
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 99
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    .line 100
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    .line 103
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    .line 104
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 105
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 107
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedRunDirection:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedRunDirection:I

    .line 108
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    .line 109
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/PdfChunk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 110
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedTotalTextLength:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedTotalTextLength:I

    .line 112
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    .line 113
    iget-object v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    .line 115
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunk:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunk:I

    .line 116
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunkChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunkChar:I

    .line 117
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->storedCurrentChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedCurrentChar:I

    .line 119
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->shortStore:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->shortStore:Z

    .line 120
    iget v0, p1, Lcom/itextpdf/text/pdf/BidiLine;->arabicOptions:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->arabicOptions:I

    .line 121
    return-void
.end method

.method public static isWS(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 618
    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChunk(Lcom/itextpdf/text/pdf/PdfChunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public addChunks(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, chunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    return-void
.end method

.method public addPiece(CLcom/itextpdf/text/pdf/PdfChunk;)V
    .locals 5
    .parameter "c"
    .parameter "chunk"

    .prologue
    const/4 v4, 0x0

    .line 206
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    if-lt v2, v3, :cond_0

    .line 207
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    .line 208
    .local v1, tempText:[C
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 209
    .local v0, tempDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    .line 210
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    .line 211
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v2, v2, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 212
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    .end local v0           #tempDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v1           #tempText:[C
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    aput-char p1, v2, v3

    .line 216
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    aput-object p2, v2, v3

    .line 217
    return-void
.end method

.method public clearChunks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 130
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 131
    return-void
.end method

.method public createArrayOfPdfChunks(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "startIdx"
    .parameter "endIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(IILcom/itextpdf/text/pdf/PdfChunk;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public createArrayOfPdfChunks(IILcom/itextpdf/text/pdf/PdfChunk;)Ljava/util/ArrayList;
    .locals 9
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "extraPdfChunk"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget v7, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 461
    .local v1, bidi:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/BidiLine;->reorder(II)V

    .line 463
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v6, v7, p1

    .line 465
    .local v6, refCk:Lcom/itextpdf/text/pdf/PdfChunk;
    const/4 v4, 0x0

    .line 466
    .local v4, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    .local v2, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 469
    .local v5, idx:I
    :goto_1
    if-gt p1, p2, :cond_b

    .line 470
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    aget v5, v7, p1

    .line 471
    :goto_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v7, v5

    .line 472
    .local v3, c:C
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v4, v7, v5

    .line 473
    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfChunk;->noPrint(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 469
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 460
    .end local v0           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .end local v1           #bidi:Z
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v3           #c:C
    .end local v4           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v5           #idx:I
    .end local v6           #refCk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .restart local v1       #bidi:Z
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    .restart local v4       #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v5       #idx:I
    .restart local v6       #refCk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_3
    move v5, p1

    .line 470
    goto :goto_2

    .line 475
    .restart local v3       #c:C
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isSeparator()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 476
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 477
    new-instance v7, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #buf:Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 480
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 482
    :cond_7
    if-ne v4, v6, :cond_8

    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 486
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 487
    new-instance v7, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #buf:Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 490
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    :cond_9
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isSeparator()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v7

    if-nez v7, :cond_a

    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 492
    :cond_a
    move-object v6, v4

    goto :goto_3

    .line 495
    .end local v3           #c:C
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 496
    new-instance v7, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_c
    if-eqz p3, :cond_d

    .line 499
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_d
    return-object v0
.end method

.method public doArabicShapping()V
    .locals 15

    .prologue
    const/16 v14, 0x6ff

    const/16 v13, 0x600

    .line 282
    const/4 v11, 0x0

    .line 283
    .local v11, src:I
    const/4 v4, 0x0

    .line 285
    .local v4, dest:I
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v11, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v7, v0, v11

    .line 287
    .local v7, c:C
    if-lt v7, v13, :cond_1

    if-gt v7, v14, :cond_1

    .line 297
    .end local v7           #c:C
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-lt v11, v0, :cond_3

    .line 298
    iput v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 299
    return-void

    .line 289
    .restart local v7       #c:C
    :cond_1
    if-eq v11, v4, :cond_2

    .line 290
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v3, v11

    aput-char v3, v0, v4

    .line 291
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v3, v3, v11

    aput-object v3, v0, v4

    .line 292
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v3, v3, v11

    aput-byte v3, v0, v4

    .line 294
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 295
    add-int/lit8 v4, v4, 0x1

    .line 296
    goto :goto_0

    .line 301
    .end local v7           #c:C
    :cond_3
    move v1, v11

    .line 302
    .local v1, startArabicIdx:I
    add-int/lit8 v11, v11, 0x1

    .line 303
    :goto_1
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v11, v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v7, v0, v11

    .line 305
    .restart local v7       #c:C
    if-lt v7, v13, :cond_4

    if-le v7, v14, :cond_5

    .line 309
    .end local v7           #c:C
    :cond_4
    sub-int v2, v11, v1

    .line 310
    .local v2, arabicWordSize:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget v6, p0, Lcom/itextpdf/text/pdf/BidiLine;->arabicOptions:I

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->arabic_shape([CII[CIII)I

    move-result v10

    .line 311
    .local v10, size:I
    if-eq v1, v4, :cond_7

    .line 312
    const/4 v9, 0x0

    .local v9, k:I
    move v12, v1

    .end local v1           #startArabicIdx:I
    .local v12, startArabicIdx:I
    move v8, v4

    .end local v4           #dest:I
    .local v8, dest:I
    :goto_2
    if-ge v9, v10, :cond_6

    .line 313
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v3, v3, v12

    aput-object v3, v0, v8

    .line 314
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    add-int/lit8 v4, v8, 0x1

    .end local v8           #dest:I
    .restart local v4       #dest:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    add-int/lit8 v1, v12, 0x1

    .end local v12           #startArabicIdx:I
    .restart local v1       #startArabicIdx:I
    aget-byte v3, v3, v12

    aput-byte v3, v0, v8

    .line 312
    add-int/lit8 v9, v9, 0x1

    move v12, v1

    .end local v1           #startArabicIdx:I
    .restart local v12       #startArabicIdx:I
    move v8, v4

    .end local v4           #dest:I
    .restart local v8       #dest:I
    goto :goto_2

    .line 307
    .end local v2           #arabicWordSize:I
    .end local v8           #dest:I
    .end local v9           #k:I
    .end local v10           #size:I
    .end local v12           #startArabicIdx:I
    .restart local v1       #startArabicIdx:I
    .restart local v4       #dest:I
    .restart local v7       #c:C
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 308
    goto :goto_1

    .end local v1           #startArabicIdx:I
    .end local v4           #dest:I
    .end local v7           #c:C
    .restart local v2       #arabicWordSize:I
    .restart local v8       #dest:I
    .restart local v9       #k:I
    .restart local v10       #size:I
    .restart local v12       #startArabicIdx:I
    :cond_6
    move v1, v12

    .end local v12           #startArabicIdx:I
    .restart local v1       #startArabicIdx:I
    move v4, v8

    .line 312
    .end local v8           #dest:I
    .restart local v4       #dest:I
    goto :goto_0

    .line 318
    .end local v9           #k:I
    :cond_7
    add-int/2addr v4, v10

    goto :goto_0
.end method

.method public flip(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 608
    add-int v2, p1, p2

    div-int/lit8 v0, v2, 0x2

    .line 609
    .local v0, mid:I
    add-int/lit8 p2, p2, -0x1

    .line 610
    :goto_0
    if-ge p1, v0, :cond_0

    .line 611
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    aget v1, v2, p1

    .line 612
    .local v1, temp:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    aget v3, v3, p2

    aput v3, v2, p1

    .line 613
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    aput v1, v2, p2

    .line 610
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 615
    .end local v1           #temp:I
    :cond_0
    return-void
.end method

.method public getParagraph(I)Z
    .locals 14
    .parameter "runDirection"

    .prologue
    .line 134
    iput p1, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    .line 135
    const/4 v10, 0x0

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 136
    const/4 v10, 0x0

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 137
    const/4 v3, 0x0

    .line 141
    .local v3, hasText:Z
    :goto_0
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    iget-object v11, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 142
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    iget v11, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 143
    .local v2, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 144
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 146
    .local v5, len:I
    :goto_1
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    if-ge v10, v5, :cond_3

    .line 147
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 148
    .local v1, c:C
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v10

    int-to-char v9, v10

    .line 149
    .local v9, uniC:C
    const/16 v10, 0xd

    if-eq v9, v10, :cond_0

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    .line 151
    :cond_0
    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v5, :cond_1

    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_1

    .line 152
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 153
    :cond_1
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 154
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    if-lt v10, v5, :cond_2

    .line 155
    const/4 v10, 0x0

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 156
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    .line 158
    :cond_2
    const/4 v3, 0x1

    .line 159
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-nez v10, :cond_3

    .line 160
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    .line 165
    .end local v1           #c:C
    .end local v9           #uniC:C
    :cond_3
    if-eqz v3, :cond_6

    .line 169
    .end local v0           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v2           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v5           #len:I
    .end local v8           #s:Ljava/lang/String;
    :cond_4
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-nez v10, :cond_7

    .line 194
    .end local v3           #hasText:Z
    :goto_2
    return v3

    .line 163
    .restart local v0       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v1       #c:C
    .restart local v2       #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v3       #hasText:Z
    .restart local v5       #len:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #uniC:C
    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/BidiLine;->addPiece(CLcom/itextpdf/text/pdf/PdfChunk;)V

    .line 146
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    goto :goto_1

    .line 167
    .end local v1           #c:C
    .end local v9           #uniC:C
    :cond_6
    const/4 v10, 0x0

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 141
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    goto/16 :goto_0

    .line 173
    .end local v0           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v2           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v5           #len:I
    .end local v8           #s:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    iget v11, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/itextpdf/text/pdf/BidiLine;->trimRight(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 174
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-nez v10, :cond_8

    .line 175
    const/4 v3, 0x1

    goto :goto_2

    .line 178
    :cond_8
    const/4 v10, 0x2

    if-eq p1, v10, :cond_9

    const/4 v10, 0x3

    if-ne p1, v10, :cond_d

    .line 179
    :cond_9
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    array-length v10, v10

    iget v11, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v10, v11, :cond_a

    .line 180
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v10, v10, [B

    iput-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    .line 181
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->pieceSize:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    .line 183
    :cond_a
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    const/4 v11, 0x0

    iget v12, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iget v13, p0, Lcom/itextpdf/text/pdf/BidiLine;->arabicOptions:I

    invoke-static {v10, v11, v12, v13}, Lcom/itextpdf/text/pdf/ArabicLigaturizer;->processNumbers([CIII)V

    .line 184
    new-instance v7, Lcom/itextpdf/text/pdf/BidiOrder;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    const/4 v12, 0x0

    iget v13, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    const/4 v10, 0x3

    if-ne p1, v10, :cond_b

    const/4 v10, 0x1

    :goto_3
    int-to-byte v10, v10

    invoke-direct {v7, v11, v12, v13, v10}, Lcom/itextpdf/text/pdf/BidiOrder;-><init>([CIIB)V

    .line 185
    .local v7, order:Lcom/itextpdf/text/pdf/BidiOrder;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/BidiOrder;->getLevels()[B

    move-result-object v6

    .line 186
    .local v6, od:[B
    const/4 v4, 0x0

    .local v4, k:I
    :goto_4
    iget v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v4, v10, :cond_c

    .line 187
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v11, v6, v4

    aput-byte v11, v10, v4

    .line 188
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    aput v4, v10, v4

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 184
    .end local v4           #k:I
    .end local v6           #od:[B
    .end local v7           #order:Lcom/itextpdf/text/pdf/BidiOrder;
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 190
    .restart local v4       #k:I
    .restart local v6       #od:[B
    .restart local v7       #order:Lcom/itextpdf/text/pdf/BidiOrder;
    :cond_c
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/BidiLine;->doArabicShapping()V

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/BidiLine;->mirrorGlyphs()V

    .line 193
    .end local v4           #k:I
    .end local v6           #od:[B
    .end local v7           #order:Lcom/itextpdf/text/pdf/BidiOrder;
    :cond_d
    const/4 v10, 0x0

    iget v11, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/itextpdf/text/pdf/BidiLine;->trimRightEx(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 194
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public getWidth(II)F
    .locals 6
    .parameter "startIdx"
    .parameter "lastIdx"

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, c:C
    const/4 v1, 0x0

    .line 437
    .local v1, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    const/4 v3, 0x0

    .line 438
    .local v3, width:F
    :goto_0
    if-gt p1, p2, :cond_2

    .line 439
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    invoke-static {v4, p1}, Lcom/itextpdf/text/Utilities;->isSurrogatePair([CI)Z

    move-result v2

    .line 440
    .local v2, surrogate:Z
    if-eqz v2, :cond_1

    .line 441
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    invoke-static {v5, p1}, Lcom/itextpdf/text/Utilities;->convertToUtf32([CI)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 442
    add-int/lit8 p1, p1, 0x1

    .line 438
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 445
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v0, v4, p1

    .line 446
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v1, v4, p1

    .line 447
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->noPrint(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_1

    .line 452
    .end local v2           #surrogate:Z
    :cond_2
    return v3
.end method

.method public getWord(II)[I
    .locals 4
    .parameter "startIdx"
    .parameter "idx"

    .prologue
    .line 504
    move v1, p2

    .line 505
    .local v1, last:I
    move v0, p2

    .line 507
    .local v0, first:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v1, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    :cond_0
    if-ne v1, p2, :cond_3

    .line 512
    const/4 v2, 0x0

    .line 519
    :goto_1
    return-object v2

    .line 507
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_2
    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-lt v0, p1, :cond_4

    .line 515
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 518
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 519
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mirrorGlyphs()V
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v0, v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 274
    sget-object v2, Lcom/itextpdf/text/pdf/BidiLine;->mirrorChars:Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .line 275
    .local v1, mirror:I
    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    int-to-char v3, v1

    aput-char v3, v2, v0

    .line 272
    .end local v1           #mirror:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    return-void
.end method

.method public processLine(FFIII)Lcom/itextpdf/text/pdf/PdfLine;
    .locals 36
    .parameter "leftX"
    .parameter "width"
    .parameter "alignment"
    .parameter "runDirection"
    .parameter "arabicOptions"

    .prologue
    .line 323
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/BidiLine;->arabicOptions:I

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/BidiLine;->save()V

    .line 325
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_0

    const/4 v10, 0x1

    .line 326
    .local v10, isRTL:Z
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-lt v5, v6, :cond_2

    .line 327
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/BidiLine;->getParagraph(I)Z

    move-result v21

    .line 328
    .local v21, hasText:Z
    if-nez v21, :cond_1

    .line 329
    const/4 v11, 0x0

    .line 426
    .end local v21           #hasText:Z
    :goto_1
    return-object v11

    .line 325
    .end local v10           #isRTL:Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 330
    .restart local v10       #isRTL:Z
    .restart local v21       #hasText:Z
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-nez v5, :cond_2

    .line 331
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v9, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 333
    .local v3, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v3, Lcom/itextpdf/text/pdf/PdfLine;

    .end local v3           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    move-object v11, v3

    goto :goto_1

    .line 337
    .end local v9           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .end local v21           #hasText:Z
    :cond_2
    move/from16 v13, p2

    .line 338
    .local v13, originalWidth:F
    const/16 v23, -0x1

    .line 339
    .local v23, lastSplit:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    if-eqz v5, :cond_3

    .line 340
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/BidiLine;->trimLeftEx(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 341
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 342
    .local v4, oldCurrentChar:I
    const/16 v34, 0x0

    .line 343
    .local v34, uniC:I
    const/4 v3, 0x0

    .line 344
    .restart local v3       #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    const/16 v19, 0x0

    .line 345
    .local v19, charWidth:F
    const/16 v24, 0x0

    .line 346
    .local v24, lastValidChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    const/16 v29, 0x0

    .line 347
    .local v29, splitChar:Z
    const/16 v30, 0x0

    .line 348
    .local v30, surrogate:Z
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v5, v6, :cond_8

    .line 349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    aget-object v3, v5, v6

    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    invoke-static {v5, v6}, Lcom/itextpdf/text/Utilities;->isSurrogatePair([CI)Z

    move-result v30

    .line 351
    if-eqz v30, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    invoke-static {v5, v6}, Lcom/itextpdf/text/Utilities;->convertToUtf32([CI)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v34

    .line 355
    :goto_3
    invoke-static/range {v34 .. v34}, Lcom/itextpdf/text/pdf/PdfChunk;->noPrint(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 348
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    goto :goto_2

    .line 354
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v34

    goto :goto_3

    .line 357
    :cond_6
    if-eqz v30, :cond_a

    .line 358
    move/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v19

    .line 361
    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/text/pdf/PdfChunk;->isExtSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z

    move-result v29

    .line 362
    if-eqz v29, :cond_7

    move/from16 v0, v34

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move/from16 v23, v0

    .line 364
    :cond_7
    sub-float v5, p2, v19

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    .line 383
    :cond_8
    if-nez v24, :cond_f

    .line 385
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 386
    if-eqz v30, :cond_9

    .line 387
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 388
    :cond_9
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(II)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 360
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v19

    goto :goto_5

    .line 366
    :cond_b
    if-eqz v29, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move/from16 v23, v0

    .line 368
    :cond_c
    sub-float p2, p2, v19

    .line 369
    move-object/from16 v24, v3

    .line 370
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 371
    const-string/jumbo v5, "TAB"

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object/from16 v31, v5

    check-cast v31, [Ljava/lang/Object;

    .line 372
    .local v31, tab:[Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v31, v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v32

    .line 373
    .local v32, tabPosition:F
    const/4 v5, 0x2

    aget-object v5, v31, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    .line 374
    .local v26, newLine:Z
    if-eqz v26, :cond_d

    sub-float v5, v13, p2

    cmpg-float v5, v32, v5

    if-gez v5, :cond_d

    .line 375
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(II)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 377
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    aget-object v5, v5, v6

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfChunk;->adjustLeft(F)V

    .line 378
    sub-float p2, v13, v32

    .line 380
    .end local v26           #newLine:Z
    .end local v31           #tab:[Ljava/lang/Object;
    .end local v32           #tabPosition:F
    :cond_e
    if-eqz v30, :cond_4

    .line 381
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    goto/16 :goto_4

    .line 390
    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-lt v5, v6, :cond_10

    .line 392
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(II)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 394
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/BidiLine;->trimRightEx(II)I

    move-result v25

    .line 395
    .local v25, newCurrentChar:I
    move/from16 v0, v25

    if-ge v0, v4, :cond_11

    .line 397
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(II)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 399
    :cond_11
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_12

    .line 400
    const-string/jumbo v5, "HYPHENATION"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 401
    .local v22, he:Lcom/itextpdf/text/pdf/HyphenationEvent;
    if-eqz v22, :cond_12

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BidiLine;->getWord(II)[I

    move-result-object v35

    .line 403
    .local v35, word:[I
    if-eqz v35, :cond_12

    .line 404
    const/4 v5, 0x0

    aget v5, v35, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/BidiLine;->getWidth(II)F

    move-result v5

    add-float v33, p2, v5

    .line 405
    .local v33, testWidth:F
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    const/4 v7, 0x0

    aget v7, v35, v7

    const/4 v8, 0x1

    aget v8, v35, v8

    const/4 v11, 0x0

    aget v11, v35, v11

    sub-int/2addr v8, v11

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v7

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-interface {v0, v5, v6, v7, v1}, Lcom/itextpdf/text/pdf/HyphenationEvent;->getHyphenatedWordPre(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FF)Ljava/lang/String;

    move-result-object v28

    .line 406
    .local v28, pre:Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lcom/itextpdf/text/pdf/HyphenationEvent;->getHyphenatedWordPost()Ljava/lang/String;

    move-result-object v27

    .line 407
    .local v27, post:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_12

    .line 408
    new-instance v20, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 409
    .local v20, extra:Lcom/itextpdf/text/pdf/PdfChunk;
    const/4 v5, 0x1

    aget v5, v35, v5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 410
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfFont;->width(Ljava/lang/String;)F

    move-result v5

    sub-float v14, v33, v5

    const/16 v16, 0x0

    const/4 v5, 0x0

    aget v5, v35, v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v1}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(IILcom/itextpdf/text/pdf/PdfChunk;)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 415
    .end local v20           #extra:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v22           #he:Lcom/itextpdf/text/pdf/HyphenationEvent;
    .end local v27           #post:Ljava/lang/String;
    .end local v28           #pre:Ljava/lang/String;
    .end local v33           #testWidth:F
    .end local v35           #word:[I
    :cond_12
    const/4 v5, -0x1

    move/from16 v0, v23

    if-eq v0, v5, :cond_13

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_14

    .line 417
    :cond_13
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    add-int/lit8 v5, v25, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/BidiLine;->getWidth(II)F

    move-result v5

    add-float v14, p2, v5

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(II)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 420
    :cond_14
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 421
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BidiLine;->trimRightEx(II)I

    move-result v25

    .line 422
    move/from16 v0, v25

    if-ge v0, v4, :cond_15

    .line 424
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    add-int/lit8 v25, v5, -0x1

    .line 426
    :cond_15
    new-instance v11, Lcom/itextpdf/text/pdf/PdfLine;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BidiLine;->getWidth(II)F

    move-result v5

    sub-float v14, v13, v5

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/BidiLine;->createArrayOfPdfChunks(II)Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v15, p3

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFFIZLjava/util/ArrayList;Z)V

    goto/16 :goto_1
.end method

.method public reorder(II)V
    .locals 10
    .parameter "start"
    .parameter "end"

    .prologue
    .line 567
    iget-object v8, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v2, v8, p1

    .line 568
    .local v2, maxLevel:B
    move v3, v2

    .line 569
    .local v3, minLevel:B
    move v5, v2

    .line 570
    .local v5, onlyOddLevels:B
    move v4, v2

    .line 571
    .local v4, onlyEvenLevels:B
    add-int/lit8 v1, p1, 0x1

    .local v1, k:I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 572
    iget-object v8, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v0, v8, v1

    .line 573
    .local v0, b:B
    if-le v0, v2, :cond_1

    .line 574
    move v2, v0

    .line 577
    :cond_0
    :goto_1
    and-int v8, v5, v0

    int-to-byte v5, v8

    .line 578
    or-int v8, v4, v0

    int-to-byte v4, v8

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_1
    if-ge v0, v3, :cond_0

    .line 576
    move v3, v0

    goto :goto_1

    .line 580
    .end local v0           #b:B
    :cond_2
    and-int/lit8 v8, v4, 0x1

    if-nez v8, :cond_4

    .line 605
    :cond_3
    :goto_2
    return-void

    .line 582
    :cond_4
    and-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 583
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/itextpdf/text/pdf/BidiLine;->flip(II)V

    goto :goto_2

    .line 586
    :cond_5
    or-int/lit8 v8, v3, 0x1

    int-to-byte v3, v8

    .line 587
    :goto_3
    if-lt v2, v3, :cond_3

    .line 588
    move v7, p1

    .line 590
    .local v7, pstart:I
    :goto_4
    if-gt v7, p2, :cond_6

    .line 591
    iget-object v8, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v8, v8, v7

    if-lt v8, v2, :cond_7

    .line 594
    :cond_6
    if-le v7, p2, :cond_8

    .line 587
    add-int/lit8 v8, v2, -0x1

    int-to-byte v2, v8

    goto :goto_3

    .line 590
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 596
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .line 597
    .local v6, pend:I
    :goto_5
    if-gt v6, p2, :cond_9

    .line 598
    iget-object v8, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    aget-byte v8, v8, v6

    if-ge v8, v2, :cond_a

    .line 601
    :cond_9
    invoke-virtual {p0, v7, v6}, Lcom/itextpdf/text/pdf/BidiLine;->flip(II)V

    .line 602
    add-int/lit8 v7, v6, 0x1

    .line 603
    goto :goto_4

    .line 597
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 255
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedRunDirection:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    .line 256
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedTotalTextLength:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    .line 257
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunk:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    .line 258
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunkChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    .line 259
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedCurrentChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    .line 260
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->shortStore:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iget v5, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    iget v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iget v5, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    :cond_2
    return-void
.end method

.method public save()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 220
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    if-lez v0, :cond_1

    .line 221
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    .line 222
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    :cond_0
    iput v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    .line 229
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedRunDirection:I

    .line 230
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedTotalTextLength:I

    .line 231
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunk:I

    .line 232
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunkChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChunkChar:I

    .line 233
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedCurrentChar:I

    .line 234
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v0, v2, :cond_8

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->shortStore:Z

    .line 235
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->shortStore:Z

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    array-length v0, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v0, v2, :cond_2

    .line 238
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    .line 239
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfChunk;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedText:[C

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedDetailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    :cond_3
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->runDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    array-length v0, v0

    iget v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    if-ge v0, v1, :cond_5

    .line 246
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    .line 247
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->orderLevels:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedOrderLevels:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iget v5, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChars:[I

    iget v1, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->storedIndexChars:[I

    iget v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    iget v4, p0, Lcom/itextpdf/text/pdf/BidiLine;->totalTextLength:I

    iget v5, p0, Lcom/itextpdf/text/pdf/BidiLine;->currentChar:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    :cond_6
    return-void

    .line 224
    :cond_7
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    :goto_1
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    if-ltz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->chunks:Ljava/util/ArrayList;

    iget v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiLine;->indexChunk:I

    goto :goto_1

    :cond_8
    move v0, v1

    .line 234
    goto/16 :goto_0
.end method

.method public trimLeft(II)I
    .locals 4
    .parameter "startIdx"
    .parameter "endIdx"

    .prologue
    .line 534
    move v1, p1

    .line 536
    .local v1, idx:I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v2

    int-to-char v0, v2

    .line 538
    .local v0, c:C
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiLine;->isWS(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    .end local v0           #c:C
    :cond_0
    return v1

    .line 536
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public trimLeftEx(II)I
    .locals 4
    .parameter "startIdx"
    .parameter "endIdx"

    .prologue
    .line 556
    move v1, p1

    .line 557
    .local v1, idx:I
    const/4 v0, 0x0

    .line 558
    .local v0, c:C
    :goto_0
    if-gt v1, p2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v2

    int-to-char v0, v2

    .line 560
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiLine;->isWS(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->noPrint(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 563
    :cond_0
    return v1

    .line 558
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public trimRight(II)I
    .locals 4
    .parameter "startIdx"
    .parameter "endIdx"

    .prologue
    .line 523
    move v1, p2

    .line 525
    .local v1, idx:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 526
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v2

    int-to-char v0, v2

    .line 527
    .local v0, c:C
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiLine;->isWS(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    .end local v0           #c:C
    :cond_0
    return v1

    .line 525
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public trimRightEx(II)I
    .locals 4
    .parameter "startIdx"
    .parameter "endIdx"

    .prologue
    .line 545
    move v1, p2

    .line 546
    .local v1, idx:I
    const/4 v0, 0x0

    .line 547
    .local v0, c:C
    :goto_0
    if-lt v1, p1, :cond_0

    .line 548
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiLine;->detailChunks:[Lcom/itextpdf/text/pdf/PdfChunk;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiLine;->text:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v2

    int-to-char v0, v2

    .line 549
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiLine;->isWS(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->noPrint(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    :cond_0
    return v1

    .line 547
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
