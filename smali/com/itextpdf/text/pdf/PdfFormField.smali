.class public Lcom/itextpdf/text/pdf/PdfFormField;
.super Lcom/itextpdf/text/pdf/PdfAnnotation;
.source "PdfFormField.java"


# static fields
.field public static final FF_COMB:I = 0x1000000

.field public static final FF_COMBO:I = 0x20000

.field public static final FF_DONOTSCROLL:I = 0x800000

.field public static final FF_DONOTSPELLCHECK:I = 0x400000

.field public static final FF_EDIT:I = 0x40000

.field public static final FF_FILESELECT:I = 0x100000

.field public static final FF_MULTILINE:I = 0x1000

.field public static final FF_MULTISELECT:I = 0x200000

.field public static final FF_NO_EXPORT:I = 0x4

.field public static final FF_NO_TOGGLE_TO_OFF:I = 0x4000

.field public static final FF_PASSWORD:I = 0x2000

.field public static final FF_PUSHBUTTON:I = 0x10000

.field public static final FF_RADIO:I = 0x8000

.field public static final FF_RADIOSINUNISON:I = 0x2000000

.field public static final FF_READ_ONLY:I = 0x1

.field public static final FF_REQUIRED:I = 0x2

.field public static final IF_SCALE_ALWAYS:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_ANAMORPHIC:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_BIGGER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_NEVER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_PROPORTIONAL:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_SMALLER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final MK_CAPTION_ABOVE:I = 0x3

.field public static final MK_CAPTION_BELOW:I = 0x2

.field public static final MK_CAPTION_LEFT:I = 0x5

.field public static final MK_CAPTION_OVERLAID:I = 0x6

.field public static final MK_CAPTION_RIGHT:I = 0x4

.field public static final MK_NO_CAPTION:I = 0x1

.field public static final MK_NO_ICON:I = 0x0

.field public static final MULTILINE:Z = true

.field public static final PASSWORD:Z = true

.field public static final PLAINTEXT:Z = false

.field public static final Q_CENTER:I = 0x1

.field public static final Q_LEFT:I = 0x0

.field public static final Q_RIGHT:I = 0x2

.field public static final SINGLELINE:Z

.field static mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;


# instance fields
.field protected kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field protected parent:Lcom/itextpdf/text/pdf/PdfFormField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_ALWAYS:Lcom/itextpdf/text/pdf/PdfName;

    .line 82
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_BIGGER:Lcom/itextpdf/text/pdf/PdfName;

    .line 83
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_SMALLER:Lcom/itextpdf/text/pdf/PdfName;

    .line 84
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_NEVER:Lcom/itextpdf/text/pdf/PdfName;

    .line 85
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_ANAMORPHIC:Lcom/itextpdf/text/pdf/PdfName;

    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_PROPORTIONAL:Lcom/itextpdf/text/pdf/PdfName;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->form:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->annotation:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V
    .locals 2
    .parameter "writer"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "action"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    .line 104
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ANNOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 105
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->annotation:Z

    .line 107
    return-void
.end method

.method protected static createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"
    .parameter "flags"

    .prologue
    .line 137
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 138
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setButton(I)V

    .line 139
    return-object v0
.end method

.method public static createCheckBox(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method protected static createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 3
    .parameter "writer"
    .parameter "flags"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 166
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 167
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 168
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 169
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 170
    if-lez p3, :cond_0

    .line 171
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method public static createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "edit"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 184
    const/high16 v1, 0x2

    if-eqz p1, :cond_0

    const/high16 v0, 0x4

    :goto_0
    add-int/2addr v0, v1

    invoke-static {p2}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "edit"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 188
    const/high16 v1, 0x2

    if-eqz p1, :cond_0

    const/high16 v0, 0x4

    :goto_0
    add-int/2addr v0, v1

    invoke-static {p2}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createEmpty(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"

    .prologue
    .line 126
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 127
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    return-object v0
.end method

.method public static createList(Lcom/itextpdf/text/pdf/PdfWriter;[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lcom/itextpdf/text/pdf/PdfWriter;[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createPushButton(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"

    .prologue
    .line 143
    const/high16 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createRadioButton(Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "noToggleToOff"

    .prologue
    .line 151
    const v1, 0x8000

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 3
    .parameter "writer"

    .prologue
    .line 211
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 212
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 213
    return-object v0
.end method

.method public static createTextField(Lcom/itextpdf/text/pdf/PdfWriter;ZZI)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 5
    .parameter "writer"
    .parameter "multiline"
    .parameter "password"
    .parameter "maxLen"

    .prologue
    const/4 v2, 0x0

    .line 155
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 156
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 157
    if-eqz p1, :cond_2

    const/16 v1, 0x1000

    .line 158
    .local v1, flags:I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v2, 0x2000

    :cond_0
    add-int/2addr v1, v2

    .line 159
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 160
    if-lez p3, :cond_1

    .line 161
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 162
    :cond_1
    return-object v0

    .end local v1           #flags:I
    :cond_2
    move v1, v2

    .line 157
    goto :goto_0
.end method

.method static mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "result"
    .parameter "source"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    .line 304
    return-void
.end method

.method static mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfStamperImp;)V
    .locals 6
    .parameter "result"
    .parameter "source"
    .parameter "writer"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    .line 286
    .local v3, res:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v4, 0x0

    .line 287
    .local v4, target:Lcom/itextpdf/text/pdf/PdfName;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    sget-object v5, Lcom/itextpdf/text/pdf/PdfFormField;->mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 288
    sget-object v5, Lcom/itextpdf/text/pdf/PdfFormField;->mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v4, v5, v1

    .line 289
    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 290
    .local v2, pdfDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object v0, v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .restart local v3       #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v3, :cond_0

    .line 292
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v3           #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 294
    .restart local v3       #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 295
    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 296
    if-eqz p2, :cond_1

    .line 297
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v2           #pdfDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    return-void
.end method

.method protected static processOptions([Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 5
    .parameter "options"

    .prologue
    .line 192
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 193
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 194
    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v3, p0, v1

    const-string/jumbo v4, "UnicodeBig"

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v0
.end method

.method protected static processOptions([[Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 7
    .parameter "options"

    .prologue
    .line 200
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 201
    .local v1, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 202
    aget-object v3, p0, v2

    .line 203
    .local v3, subOption:[Ljava/lang/String;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string/jumbo v6, "UnicodeBig"

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 204
    .local v0, ar2:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string/jumbo v6, "UnicodeBig"

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 205
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v0           #ar2:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #subOption:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static shallowDuplicate(Lcom/itextpdf/text/pdf/PdfAnnotation;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 5
    .parameter "annot"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .local v0, dup:Lcom/itextpdf/text/pdf/PdfAnnotation;
    move-object v1, v0

    .line 330
    check-cast v1, Lcom/itextpdf/text/pdf/PdfFormField;

    .local v1, dupField:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v2, p0

    .line 331
    check-cast v2, Lcom/itextpdf/text/pdf/PdfFormField;

    .line 332
    .local v2, srcField:Lcom/itextpdf/text/pdf/PdfFormField;
    iget-object v3, v2, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    iput-object v3, v1, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 333
    iget-object v3, v2, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    iput-object v3, v1, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    .line 337
    .end local v1           #dupField:Lcom/itextpdf/text/pdf/PdfFormField;
    .end local v2           #srcField:Lcom/itextpdf/text/pdf/PdfFormField;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 338
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    .line 339
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    .line 340
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    .line 341
    return-object v0

    .line 336
    .end local v0           #dup:Lcom/itextpdf/text/pdf/PdfAnnotation;
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .restart local v0       #dup:Lcom/itextpdf/text/pdf/PdfAnnotation;
    goto :goto_0
.end method


# virtual methods
.method public addKid(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 224
    iput-object p0, p1, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public getKids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    return-object v0
.end method

.method public setButton(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 131
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setDefaultValueAsName(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 263
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 264
    return-void
.end method

.method public setDefaultValueAsString(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 259
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 260
    return-void
.end method

.method public setFieldFlags(I)I
    .locals 5
    .parameter "flags"

    .prologue
    .line 235
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 237
    .local v0, obj:Lcom/itextpdf/text/pdf/PdfNumber;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 241
    .local v1, old:I
    :goto_0
    or-int v2, v1, p1

    .line 242
    .local v2, v:I
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 243
    return v1

    .line 240
    .end local v1           #old:I
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .restart local v1       #old:I
    goto :goto_0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setMappingName(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 276
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TM:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 277
    return-void
.end method

.method public setQuadding(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 280
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 281
    return-void
.end method

.method public setUsed()V
    .locals 7

    .prologue
    .line 308
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->used:Z

    .line 309
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    if-eqz v5, :cond_0

    .line 310
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 311
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 312
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 313
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 314
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_1
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 317
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #k:I
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->templates:Ljava/util/HashSet;

    if-nez v5, :cond_3

    .line 324
    :goto_1
    return-void

    .line 319
    :cond_3
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 320
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->templates:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 321
    .local v4, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v1, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_2

    .line 323
    .end local v4           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_4
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 272
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TU:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 273
    return-void
.end method

.method public setValue(Lcom/itextpdf/text/pdf/PdfSignature;)V
    .locals 1
    .parameter "sig"

    .prologue
    .line 255
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 256
    return-void
.end method

.method public setValueAsName(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 251
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 252
    return-void
.end method

.method public setValueAsString(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 247
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 248
    return-void
.end method

.method public setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "rect"
    .parameter "highlight"

    .prologue
    .line 117
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ANNOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 118
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 119
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->annotation:Z

    .line 121
    if-eqz p2, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 123
    :cond_0
    return-void
.end method
