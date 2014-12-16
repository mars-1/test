.class public Lcom/itextpdf/text/pdf/PdfDestination;
.super Lcom/itextpdf/text/pdf/PdfArray;
.source "PdfDestination.java"


# static fields
.field public static final FIT:I = 0x1

.field public static final FITB:I = 0x5

.field public static final FITBH:I = 0x6

.field public static final FITBV:I = 0x7

.field public static final FITH:I = 0x2

.field public static final FITR:I = 0x4

.field public static final FITV:I = 0x3

.field public static final XYZ:I


# instance fields
.field private status:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    .line 101
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 102
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FITB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FIT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "type"
    .parameter "parameter"

    .prologue
    .line 125
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 128
    :pswitch_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FITH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 139
    :goto_0
    return-void

    .line 131
    :pswitch_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FITV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 134
    :pswitch_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FITBH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 137
    :pswitch_3
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FITBV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(IFFF)V
    .locals 2
    .parameter "type"
    .parameter "left"
    .parameter "top"
    .parameter "zoom"

    .prologue
    const/4 v1, 0x0

    .line 154
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->XYZ:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    .line 155
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    .line 156
    sget-object v0, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 159
    :goto_0
    cmpg-float v0, p3, v1

    if-gez v0, :cond_1

    .line 160
    sget-object v0, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 163
    :goto_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 164
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1
.end method

.method public constructor <init>(IFFFF)V
    .locals 1
    .parameter "type"
    .parameter "left"
    .parameter "bottom"
    .parameter "right"
    .parameter "top"

    .prologue
    .line 183
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FITR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    .line 184
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 185
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 186
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 187
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, p5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "dest"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    .line 199
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfDestination;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method


# virtual methods
.method public addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z
    .locals 2
    .parameter "page"

    .prologue
    const/4 v0, 0x1

    .line 227
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDestination;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 229
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPage()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDestination;->status:Z

    return v0
.end method
