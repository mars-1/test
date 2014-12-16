.class public Lcom/itextpdf/text/pdf/PdfReader;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfReader$1;,
        Lcom/itextpdf/text/pdf/PdfReader$PageRefs;
    }
.end annotation


# static fields
.field static final endobj:[B

.field static final endstream:[B

.field static final pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

.field public static unethicalreading:Z


# instance fields
.field protected acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

.field protected acroFormParsed:Z

.field private appendable:Z

.field protected catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected certificate:Ljava/security/cert/Certificate;

.field protected certificateKey:Ljava/security/Key;

.field protected certificateKeyProvider:Ljava/lang/String;

.field protected consolidateNamedDestinations:Z

.field private cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

.field protected decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

.field protected encrypted:Z

.field private encryptionError:Z

.field protected eofPos:I

.field private fileLength:I

.field protected freeXref:I

.field private hybridXref:Z

.field protected lastXref:I

.field private lastXrefPartial:I

.field protected newXrefType:Z

.field private objGen:I

.field private objNum:I

.field protected objStmMark:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field

.field protected objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

.field private ownerPasswordUsed:Z

.field protected pValue:I

.field protected pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

.field private partial:Z

.field protected password:[B

.field protected pdfVersion:C

.field protected rValue:I

.field private readDepth:I

.field protected rebuilt:Z

.field protected remoteToLocalNamedDestinations:Z

.field rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected sharedStreams:Z

.field protected strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfString;",
            ">;"
        }
    .end annotation
.end field

.field protected tampered:Z

.field protected tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

.field protected trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

.field protected xref:[I

.field private xrefObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    sput-boolean v2, Lcom/itextpdf/text/pdf/PdfReader;->unethicalreading:Z

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    .line 97
    const-string/jumbo v0, "endstream"

    invoke-static {v0, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReader;->endstream:[B

    .line 98
    const-string/jumbo v0, "endobj"

    invoke-static {v0, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfReader;->endobj:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 3
    .parameter "reader"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v1, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 268
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    .line 269
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 270
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 271
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 272
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 273
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 274
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 275
    iget-char v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C

    iput-char v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C

    .line 276
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:I

    .line 277
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 278
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I

    .line 279
    new-instance v1, Lcom/itextpdf/text/pdf/PRTokeniser;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 280
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v1, :cond_0

    .line 281
    new-instance v1, Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>(Lcom/itextpdf/text/pdf/PdfEncryption;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 282
    :cond_0
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    .line 283
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    .line 285
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 286
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;-><init>(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    .line 289
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 290
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 291
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 292
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:I

    .line 293
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    .line 294
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    .line 295
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 296
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    .line 297
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 298
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;[B)V
    .locals 3
    .parameter "raf"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 258
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 259
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    .line 260
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 261
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdfPartial()V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/io/InputStream;[B)V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter "is"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 233
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 234
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    new-instance v1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 235
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/lang/String;[B)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/security/Key;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "certificate"
    .parameter "certificateKey"
    .parameter "certificateKeyProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 199
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 200
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 201
    iput-object p4, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 203
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "filename"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 167
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 168
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/net/URL;[B)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[B)V
    .locals 2
    .parameter "url"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 220
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 221
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    new-instance v1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/net/URL;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 223
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pdfIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;-><init>([B[B)V

    .line 178
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2
    .parameter "pdfIn"
    .parameter "ownerPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 114
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 123
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 124
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 130
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 131
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1573
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 186
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    .line 187
    new-instance v0, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPdf()V

    .line 189
    return-void
.end method

.method public static ASCII85Decode([B)[B
    .locals 14
    .parameter "in"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1852
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1853
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1854
    .local v6, state:I
    new-array v1, v12, [I

    .line 1855
    .local v1, chn:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_0

    .line 1856
    aget-byte v7, p0, v3

    and-int/lit16 v0, v7, 0xff

    .line 1857
    .local v0, ch:I
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_2

    .line 1883
    .end local v0           #ch:I
    :cond_0
    const/4 v5, 0x0

    .line 1887
    .local v5, r:I
    if-ne v6, v11, :cond_9

    .line 1888
    aget v7, v1, v9

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    aget v8, v1, v10

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    const v8, 0x95eed

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x1c39

    add-int/lit8 v5, v7, 0x55

    .line 1889
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1902
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 1859
    .end local v5           #r:I
    .restart local v0       #ch:I
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1855
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1861
    :cond_4
    const/16 v7, 0x7a

    if-ne v0, v7, :cond_5

    if-nez v6, :cond_5

    .line 1862
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1863
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1864
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1865
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1868
    :cond_5
    const/16 v7, 0x21

    if-lt v0, v7, :cond_6

    const/16 v7, 0x75

    if-le v0, v7, :cond_7

    .line 1869
    :cond_6
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "illegal.character.in.ascii85decode"

    invoke-static {v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1870
    :cond_7
    add-int/lit8 v7, v0, -0x21

    aput v7, v1, v6

    .line 1871
    add-int/lit8 v6, v6, 0x1

    .line 1872
    if-ne v6, v12, :cond_3

    .line 1873
    const/4 v6, 0x0

    .line 1874
    const/4 v5, 0x0

    .line 1875
    .restart local v5       #r:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v12, :cond_8

    .line 1876
    mul-int/lit8 v7, v5, 0x55

    aget v8, v1, v2

    add-int v5, v7, v8

    .line 1875
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1877
    :cond_8
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1878
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1879
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1880
    int-to-byte v7, v5

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1891
    .end local v0           #ch:I
    .end local v2           #j:I
    :cond_9
    if-ne v6, v13, :cond_a

    .line 1892
    aget v7, v1, v9

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    aget v8, v1, v10

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    aget v8, v1, v11

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x1c39

    add-int/lit8 v5, v7, 0x55

    .line 1893
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1894
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 1896
    :cond_a
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1897
    aget v7, v1, v9

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    mul-int/lit8 v7, v7, 0x55

    aget v8, v1, v10

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    aget v8, v1, v11

    mul-int/lit8 v8, v8, 0x55

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    aget v8, v1, v13

    mul-int/lit8 v8, v8, 0x55

    add-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x55

    .line 1898
    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1899
    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1900
    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1
.end method

.method public static ASCIIHexDecode([B)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 1824
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1825
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    .line 1826
    .local v1, first:Z
    const/4 v4, 0x0

    .line 1827
    .local v4, n1:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_0

    .line 1828
    aget-byte v6, p0, v2

    and-int/lit16 v0, v6, 0xff

    .line 1829
    .local v0, ch:I
    const/16 v6, 0x3e

    if-ne v0, v6, :cond_2

    .line 1842
    .end local v0           #ch:I
    :cond_0
    if-nez v1, :cond_1

    .line 1843
    shl-int/lit8 v6, v4, 0x4

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1844
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 1831
    .restart local v0       #ch:I
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1827
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1833
    :cond_3
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v3

    .line 1834
    .local v3, n:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1835
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "illegal.character.in.asciihexdecode"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1836
    :cond_4
    if-eqz v1, :cond_5

    .line 1837
    move v4, v3

    .line 1840
    :goto_2
    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    goto :goto_1

    .line 1839
    :cond_5
    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1840
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static FlateDecode([B)[B
    .locals 2
    .parameter "in"

    .prologue
    .line 1672
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->FlateDecode([BZ)[B

    move-result-object v0

    .line 1673
    .local v0, b:[B
    if-nez v0, :cond_0

    .line 1674
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->FlateDecode([BZ)[B

    move-result-object v0

    .line 1675
    .end local v0           #b:[B
    :cond_0
    return-object v0
.end method

.method public static FlateDecode([BZ)[B
    .locals 7
    .parameter "in"
    .parameter "strict"

    .prologue
    .line 1799
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1800
    .local v4, stream:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1801
    .local v5, zip:Ljava/util/zip/InflaterInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1802
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    const/16 v6, 0xffc

    :goto_0
    new-array v0, v6, [B

    .line 1805
    .local v0, b:[B
    :goto_1
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v2

    .local v2, n:I
    if-ltz v2, :cond_1

    .line 1806
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1812
    .end local v2           #n:I
    :catch_0
    move-exception v1

    .line 1813
    .local v1, e:Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 1814
    const/4 v6, 0x0

    .line 1815
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v6

    .line 1802
    .end local v0           #b:[B
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 1808
    .restart local v0       #b:[B
    .restart local v2       #n:I
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 1809
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1810
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_2

    .line 1815
    .end local v2           #n:I
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_2
.end method

.method public static LZWDecode([B)[B
    .locals 3
    .parameter "in"

    .prologue
    .line 1910
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1911
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/itextpdf/text/pdf/LZWDecoder;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/LZWDecoder;-><init>()V

    .line 1912
    .local v0, lzw:Lcom/itextpdf/text/pdf/LZWDecoder;
    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/text/pdf/LZWDecoder;->decode([BLjava/io/OutputStream;)V

    .line 1913
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    return v0
.end method

.method static synthetic access$300(Lcom/itextpdf/text/pdf/PdfReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    return v0
.end method

.method static synthetic access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    return p1
.end method

.method static synthetic access$400(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkPRStreamLength(Lcom/itextpdf/text/pdf/PRStream;)V
    .locals 13
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    .line 1135
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->length()I

    move-result v1

    .line 1136
    .local v1, fileLength:I
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRStream;->getOffset()I

    move-result v7

    .line 1137
    .local v7, start:I
    const/4 v0, 0x0

    .line 1138
    .local v0, calc:Z
    const/4 v8, 0x0

    .line 1139
    .local v8, streamLength:I
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v10}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1140
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 1141
    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 1142
    add-int v10, v8, v7

    add-int/lit8 v11, v1, -0x14

    if-le v10, v11, :cond_3

    .line 1143
    const/4 v0, 0x1

    .line 1156
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1157
    new-array v9, v12, [B

    .line 1158
    .local v9, tline:[B
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10, v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1160
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v5

    .line 1161
    .local v5, pos:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->readLineSegment([B)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1178
    .end local v5           #pos:I
    .end local v9           #tline:[B
    :cond_2
    :goto_1
    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/PRStream;->setLength(I)V

    .line 1179
    return-void

    .line 1145
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    add-int v11, v7, v8

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1146
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, line:Ljava/lang/String;
    const-string/jumbo v10, "\nendstream"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "\r\nendstream"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "\rendstream"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "endstream"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1151
    const/4 v0, 0x1

    goto :goto_0

    .line 1155
    .end local v3           #line:Ljava/lang/String;
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1163
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #pos:I
    .restart local v9       #tline:[B
    :cond_5
    sget-object v10, Lcom/itextpdf/text/pdf/PdfReader;->endstream:[B

    invoke-static {v9, v10}, Lcom/itextpdf/text/pdf/PdfReader;->equalsn([B[B)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1164
    sub-int v8, v5, v7

    .line 1165
    goto :goto_1

    .line 1167
    :cond_6
    sget-object v10, Lcom/itextpdf/text/pdf/PdfReader;->endobj:[B

    invoke-static {v9, v10}, Lcom/itextpdf/text/pdf/PdfReader;->equalsn([B[B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1168
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    add-int/lit8 v11, v5, -0x10

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1169
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10, v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 1170
    .local v6, s:Ljava/lang/String;
    const-string/jumbo v10, "endstream"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1171
    .local v2, index:I
    if-ltz v2, :cond_7

    .line 1172
    add-int/lit8 v10, v5, -0x10

    add-int v5, v10, v2

    .line 1173
    :cond_7
    sub-int v8, v5, v7

    .line 1174
    goto :goto_1
.end method

.method private convertNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z
    .locals 10
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2732
    .local p2, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 2733
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2734
    .local v6, objIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2735
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, p1

    .line 2736
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2737
    .local v3, ob2:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_2

    .line 2738
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2739
    .local v5, obj2Idx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    move-object v1, v3

    .line 2740
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2741
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfName;

    .line 2742
    .local v7, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2743
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2744
    .local v4, ob3:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 2745
    .local v2, name:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 2746
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2747
    move-object v2, v4

    .line 2750
    .end local v2           #name:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2751
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_2

    .line 2752
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2753
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2754
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2755
    invoke-direct {p0, v5, v3}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2756
    invoke-direct {p0, v6, p1}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2757
    const/4 v8, 0x1

    .line 2763
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #obj2Idx:I
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfName;
    :goto_1
    return v8

    .line 2748
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v2       #name:Ljava/lang/Object;
    .restart local v3       #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v4       #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #obj2Idx:I
    .restart local v7       #type:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2749
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto :goto_0

    .line 2763
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #obj2Idx:I
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static decodePredictor([BLcom/itextpdf/text/pdf/PdfObject;)[B
    .locals 29
    .parameter "in"
    .parameter "dicPar"

    .prologue
    .line 1684
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v26

    if-nez v26, :cond_1

    .line 1723
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    move-object/from16 v11, p1

    .line 1686
    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1687
    .local v11, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->PREDICTOR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1688
    .local v16, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1690
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v21

    .line 1691
    .local v21, predictor:I
    const/16 v26, 0xa

    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 1693
    const/16 v25, 0x1

    .line 1694
    .local v25, width:I
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->COLUMNS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1695
    .restart local v16       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1696
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v25

    .line 1697
    :cond_2
    const/4 v8, 0x1

    .line 1698
    .local v8, colors:I
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->COLORS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1699
    .restart local v16       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1700
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 1701
    :cond_3
    const/16 v4, 0x8

    .line 1702
    .local v4, bpc:I
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1703
    .restart local v16       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1704
    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v16           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1705
    :cond_4
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v26, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1706
    .local v10, dataStream:Ljava/io/DataInputStream;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1707
    .local v14, fout:Ljava/io/ByteArrayOutputStream;
    mul-int v26, v8, v4

    div-int/lit8 v5, v26, 0x8

    .line 1708
    .local v5, bytesPerPixel:I
    mul-int v26, v8, v25

    mul-int v26, v26, v4

    add-int/lit8 v26, v26, 0x7

    div-int/lit8 v6, v26, 0x8

    .line 1709
    .local v6, bytesPerRow:I
    new-array v9, v6, [B

    .line 1710
    .local v9, curr:[B
    new-array v0, v6, [B

    move-object/from16 v22, v0

    .line 1715
    .local v22, prior:[B
    :goto_1
    const/4 v13, 0x0

    .line 1717
    .local v13, filter:I
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 1718
    if-gez v13, :cond_5

    .line 1719
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_0

    .line 1721
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v9, v0, v6}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    packed-switch v13, :pswitch_data_0

    .line 1776
    new-instance v26, Ljava/lang/RuntimeException;

    const-string/jumbo v27, "png.filter.unknown"

    invoke-static/range {v27 .. v27}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1722
    :catch_0
    move-exception v12

    .line 1723
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_0

    .line 1730
    .end local v12           #e:Ljava/lang/Exception;
    :pswitch_0
    move v15, v5

    .local v15, i:I
    :goto_2
    if-ge v15, v6, :cond_a

    .line 1731
    aget-byte v26, v9, v15

    sub-int v27, v15, v5

    aget-byte v27, v9, v27

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1730
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1735
    .end local v15           #i:I
    :pswitch_1
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    if-ge v15, v6, :cond_a

    .line 1736
    aget-byte v26, v9, v15

    aget-byte v27, v22, v15

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1735
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1740
    .end local v15           #i:I
    :pswitch_2
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v5, :cond_6

    .line 1741
    aget-byte v26, v9, v15

    aget-byte v27, v22, v15

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1740
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1743
    :cond_6
    move v15, v5

    :goto_5
    if-ge v15, v6, :cond_a

    .line 1744
    aget-byte v26, v9, v15

    sub-int v27, v15, v5

    aget-byte v27, v9, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    aget-byte v28, v22, v15

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    add-int v27, v27, v28

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1743
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1748
    .end local v15           #i:I
    :pswitch_3
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_6
    if-ge v15, v5, :cond_7

    .line 1749
    aget-byte v26, v9, v15

    aget-byte v27, v22, v15

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1748
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1752
    :cond_7
    move v15, v5

    :goto_7
    if-ge v15, v6, :cond_a

    .line 1753
    sub-int v26, v15, v5

    aget-byte v26, v9, v26

    move/from16 v0, v26

    and-int/lit16 v2, v0, 0xff

    .line 1754
    .local v2, a:I
    aget-byte v26, v22, v15

    move/from16 v0, v26

    and-int/lit16 v3, v0, 0xff

    .line 1755
    .local v3, b:I
    sub-int v26, v15, v5

    aget-byte v26, v22, v26

    move/from16 v0, v26

    and-int/lit16 v7, v0, 0xff

    .line 1757
    .local v7, c:I
    add-int v26, v2, v3

    sub-int v17, v26, v7

    .line 1758
    .local v17, p:I
    sub-int v26, v17, v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 1759
    .local v18, pa:I
    sub-int v26, v17, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1760
    .local v19, pb:I
    sub-int v26, v17, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 1764
    .local v20, pc:I
    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 1765
    move/from16 v23, v2

    .line 1771
    .local v23, ret:I
    :goto_8
    aget-byte v26, v9, v15

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v9, v15

    .line 1752
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1766
    .end local v23           #ret:I
    :cond_8
    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 1767
    move/from16 v23, v3

    .restart local v23       #ret:I
    goto :goto_8

    .line 1769
    .end local v23           #ret:I
    :cond_9
    move/from16 v23, v7

    .restart local v23       #ret:I
    goto :goto_8

    .line 1779
    .end local v2           #a:I
    .end local v3           #b:I
    .end local v7           #c:I
    .end local v15           #i:I
    .end local v17           #p:I
    .end local v18           #pa:I
    .end local v19           #pb:I
    .end local v20           #pc:I
    .end local v23           #ret:I
    :cond_a
    :pswitch_4
    :try_start_1
    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1786
    :goto_9
    move-object/from16 v24, v22

    .line 1787
    .local v24, tmp:[B
    move-object/from16 v22, v9

    .line 1788
    move-object/from16 v9, v24

    .line 1789
    goto/16 :goto_1

    .line 1781
    .end local v24           #tmp:[B
    :catch_1
    move-exception v26

    goto :goto_9

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static duplicatePdfDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 4
    .parameter "original"
    .parameter "copy"
    .parameter "newReader"

    .prologue
    .line 2847
    if-nez p1, :cond_0

    .line 2848
    new-instance p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p1
    invoke-direct {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 2849
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v2, v0

    .line 2850
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 2851
    .local v2, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 2853
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    return-object p1
.end method

.method protected static duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "original"
    .parameter "newReader"

    .prologue
    const/4 v0, 0x0

    .line 2857
    if-nez p0, :cond_0

    move-object v3, v0

    .line 2881
    .end local p0
    :goto_0
    return-object v3

    .line 2859
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v3, p0

    .line 2881
    goto :goto_0

    .line 2861
    :pswitch_1
    check-cast p0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p0
    invoke-static {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    goto :goto_0

    .restart local p0
    :pswitch_2
    move-object v2, p0

    .line 2864
    check-cast v2, Lcom/itextpdf/text/pdf/PRStream;

    .line 2865
    .local v2, org:Lcom/itextpdf/text/pdf/PRStream;
    new-instance v3, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v3, v2, v0, p1}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 2866
    .local v3, stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-static {v2, v3, p1}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfDictionary;

    goto :goto_0

    .line 2870
    .end local v2           #org:Lcom/itextpdf/text/pdf/PRStream;
    .end local v3           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :pswitch_3
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2871
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast p0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2872
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v4, p1}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 2874
    goto :goto_0

    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local p0
    :pswitch_4
    move-object v2, p0

    .line 2877
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2878
    .local v2, org:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v5

    invoke-direct {v3, p1, v4, v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;II)V

    goto :goto_0

    .line 2859
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private ensureXrefSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 1246
    if-nez p1, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    if-nez v1, :cond_2

    .line 1249
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    goto :goto_0

    .line 1251
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 1252
    new-array v0, p1, [I

    .line 1253
    .local v0, xref2:[I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1254
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    goto :goto_0
.end method

.method private equalsArray([B[BI)Z
    .locals 3
    .parameter "ar1"
    .parameter "ar2"
    .parameter "size"

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 566
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 567
    const/4 v1, 0x0

    .line 569
    :goto_1
    return v1

    .line 565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static equalsn([B[B)Z
    .locals 4
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 2372
    array-length v1, p1

    .line 2373
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2374
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 2375
    const/4 v2, 0x0

    .line 2377
    :goto_1
    return v2

    .line 2373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2377
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z
    .locals 3
    .parameter "dic"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2381
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2382
    .local v1, type:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2383
    :cond_0
    const/4 v2, 0x0

    .line 2385
    :goto_0
    return v2

    :cond_1
    move-object v0, v1

    .line 2384
    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 2385
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method static getFontName(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 3
    .parameter "dic"

    .prologue
    const/4 v1, 0x0

    .line 2389
    if-nez p0, :cond_1

    .line 2394
    :cond_0
    :goto_0
    return-object v1

    .line 2391
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2392
    .local v0, type:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2394
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNameArray(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2509
    if-nez p0, :cond_0

    move-object p0, v1

    .line 2521
    .end local p0
    :goto_0
    return-object p0

    .line 2511
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    .line 2512
    if-nez p0, :cond_1

    move-object p0, v1

    .line 2513
    goto :goto_0

    .line 2514
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2515
    check-cast p0, Lcom/itextpdf/text/pdf/PdfArray;

    goto :goto_0

    .line 2516
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2517
    check-cast p0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2518
    .local v0, arr2:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2519
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #arr2:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v0

    goto :goto_0

    .restart local v0       #arr2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    move-object p0, v1

    .line 2521
    goto :goto_0
.end method

.method public static getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;
    .locals 9
    .parameter "box"

    .prologue
    .line 483
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v0

    .line 484
    .local v0, llx:F
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 485
    .local v1, lly:F
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 486
    .local v2, urx:F
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 487
    .local v3, ury:F
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    return-object v4
.end method

.method public static getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    .line 811
    if-nez p0, :cond_1

    move-object p0, v6

    .line 838
    .local v1, appendable:Z
    .local v3, idx:I
    .local v5, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    :goto_0
    return-object p0

    .line 813
    .end local v1           #appendable:Z
    .end local v3           #idx:I
    .end local v5           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 816
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object v5, v0

    .line 817
    .restart local v5       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    .line 818
    .restart local v3       #idx:I
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v7

    iget-boolean v1, v7, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    .line 819
    .restart local v1       #appendable:Z
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    .line 820
    if-nez p0, :cond_2

    move-object p0, v6

    .line 821
    goto :goto_0

    .line 824
    :cond_2
    if-eqz v1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 836
    :goto_1
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfObject;->setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    .end local v1           #appendable:Z
    .end local v3           #idx:I
    .end local v5           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :catch_0
    move-exception v2

    .line 842
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 827
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #appendable:Z
    .restart local v3       #idx:I
    .restart local v5       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :sswitch_0
    :try_start_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNull;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    .end local p0
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v4

    .line 828
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 830
    :sswitch_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfBoolean;

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v6

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    .end local p0
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v4

    .line 831
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 833
    :sswitch_2
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local p0
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v4

    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 825
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 3
    .parameter "obj"
    .parameter "parent"

    .prologue
    .line 866
    if-nez p0, :cond_1

    .line 867
    const/4 p0, 0x0

    .line 886
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 868
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 869
    const/4 v1, 0x0

    .line 870
    .local v1, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->isAppendable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 882
    :goto_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfObject;->setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    goto :goto_0

    .line 873
    :sswitch_0
    new-instance p0, Lcom/itextpdf/text/pdf/PdfNull;

    .end local p0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    .line 874
    .restart local p0
    goto :goto_1

    .line 876
    :sswitch_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    check-cast p0, Lcom/itextpdf/text/pdf/PdfBoolean;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    .local v0, obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v0

    .line 877
    .end local v0           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 879
    :sswitch_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>([B)V

    .end local p0
    .restart local v0       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object p0, v0

    .end local v0           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p0
    goto :goto_1

    .line 886
    .end local v1           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    goto :goto_0

    .line 871
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "obj"

    .prologue
    .line 798
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 799
    .local v0, obj2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 800
    return-object v0
.end method

.method public static getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "obj"
    .parameter "parent"

    .prologue
    .line 855
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 856
    .local v0, obj2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 857
    return-object v0
.end method

.method public static getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 2143
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2144
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2147
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 10
    .parameter "stream"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2085
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2086
    .local v4, filter:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v0

    .line 2087
    .local v0, b:[B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2088
    .local v5, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-eqz v4, :cond_0

    .line 2089
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2090
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2094
    .end local v4           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    .local v2, dp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2096
    .local v3, dpo:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2097
    :cond_1
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2098
    :cond_2
    if-eqz v3, :cond_3

    .line 2099
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2100
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    .end local v3           #dpo:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_e

    .line 2106
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2107
    .local v7, name:Ljava/lang/String;
    const-string/jumbo v8, "/FlateDecode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "/Fl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2108
    :cond_4
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->FlateDecode([B)[B

    move-result-object v0

    .line 2109
    const/4 v1, 0x0

    .line 2110
    .local v1, dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 2111
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 2112
    .restart local v1       #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->decodePredictor([BLcom/itextpdf/text/pdf/PdfObject;)[B

    move-result-object v0

    .line 2105
    .end local v1           #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2091
    .end local v2           #dp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v6           #j:I
    .end local v7           #name:Ljava/lang/String;
    .restart local v4       #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2092
    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v4           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    .line 2101
    .restart local v2       #dp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v3       #dpo:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2102
    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v3           #dpo:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 2115
    .restart local v6       #j:I
    .restart local v7       #name:Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "/ASCIIHexDecode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "/AHx"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2116
    :cond_9
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->ASCIIHexDecode([B)[B

    move-result-object v0

    goto :goto_3

    .line 2117
    :cond_a
    const-string/jumbo v8, "/ASCII85Decode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "/A85"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2118
    :cond_b
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->ASCII85Decode([B)[B

    move-result-object v0

    goto :goto_3

    .line 2119
    :cond_c
    const-string/jumbo v8, "/LZWDecode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2120
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->LZWDecode([B)[B

    move-result-object v0

    .line 2121
    const/4 v1, 0x0

    .line 2122
    .restart local v1       #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 2123
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 2124
    .restart local v1       #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->decodePredictor([BLcom/itextpdf/text/pdf/PdfObject;)[B

    move-result-object v0

    goto :goto_3

    .line 2127
    .end local v1           #dicParam:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_d
    const-string/jumbo v8, "/Crypt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2130
    new-instance v8, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string/jumbo v9, "the.filter.1.is.not.supported"

    invoke-static {v9, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2132
    .end local v7           #name:Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method public static getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2199
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 2201
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2202
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2205
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 10
    .parameter "stream"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2158
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v6

    .line 2160
    .local v6, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getOffset()I

    move-result v8

    if-gez v8, :cond_1

    .line 2161
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getBytes()[B

    move-result-object v0

    .line 2190
    .local v0, b:[B
    :cond_0
    :goto_0
    return-object v0

    .line 2163
    .end local v0           #b:[B
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getLength()I

    move-result v8

    new-array v0, v8, [B

    .line 2164
    .restart local v0       #b:[B
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getOffset()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 2165
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 2166
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v1

    .line 2167
    .local v1, decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz v1, :cond_0

    .line 2168
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 2169
    .local v2, filter:Lcom/itextpdf/text/pdf/PdfObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .local v3, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    if-eqz v2, :cond_2

    .line 2171
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2172
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    .end local v2           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 2177
    .local v7, skip:Z
    const/4 v4, 0x0

    .local v4, k:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 2178
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2179
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/Crypt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2180
    const/4 v7, 0x1

    .line 2184
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    if-nez v7, :cond_0

    .line 2185
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getObjNum()I

    move-result v8

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRStream;->getObjGen()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfEncryption;->setHashKey(II)V

    .line 2186
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v0

    goto :goto_0

    .line 2173
    .end local v4           #k:I
    .end local v7           #skip:Z
    .restart local v2       #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2174
    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 2177
    .restart local v4       #k:I
    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v7       #skip:Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 7
    .parameter "dic"

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x0

    .line 2398
    if-nez p0, :cond_1

    move-object v2, v3

    .line 2410
    :cond_0
    :goto_0
    return-object v2

    .line 2400
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getFontName(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v2

    .line 2401
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_2

    move-object v2, v3

    .line 2402
    goto :goto_0

    .line 2403
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_4

    :cond_3
    move-object v2, v3

    .line 2404
    goto :goto_0

    .line 2405
    :cond_4
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 2406
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2407
    .local v0, c:C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x5a

    if-le v0, v4, :cond_6

    :cond_5
    move-object v2, v3

    .line 2408
    goto :goto_0

    .line 2405
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private iterateBookmarks(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)V
    .locals 3
    .parameter "outlineRef"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2679
    .local p2, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 2680
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->replaceNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z

    .line 2681
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2682
    .local v1, outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2683
    .local v0, first:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 2684
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfReader;->iterateBookmarks(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)V

    .line 2686
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 2687
    goto :goto_0

    .line 2688
    .end local v0           #first:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v1           #outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-void
.end method

.method public static killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1231
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isNull()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v3, v4

    .line 1242
    :cond_1
    :goto_0
    return-object v3

    .line 1233
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 1234
    .local v3, ret:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, p0

    .line 1235
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1236
    .local v2, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    .line 1237
    .local v1, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v0

    .line 1238
    .local v0, n:I
    iget-object v5, v1, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-boolean v4, v1, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v4, :cond_1

    .line 1240
    iget-object v4, v1, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    mul-int/lit8 v5, v0, 0x2

    const/4 v6, -0x1

    aput v6, v4, v5

    goto :goto_0
.end method

.method private readDecryptedDocObj()V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    if-eqz v2, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 580
    .local v15, encDic:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encryptionError:Z

    .line 583
    const/16 v17, 0x0

    .line 584
    .local v17, encryptionKey:[B
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 585
    invoke-static {v15}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 590
    .local v14, enc:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v12

    .line 591
    .local v12, documentIDs:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x0

    .line 592
    .local v3, documentID:[B
    if-eqz v12, :cond_2

    .line 593
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 594
    .local v26, o:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v31

    .line 596
    .local v31, s:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 597
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 601
    .end local v26           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v31           #s:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 602
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 603
    :cond_3
    const/4 v5, 0x0

    .line 604
    .local v5, uValue:[B
    const/4 v6, 0x0

    .line 605
    .local v6, oValue:[B
    const/4 v8, 0x0

    .line 606
    .local v8, cryptoMode:I
    const/16 v24, 0x0

    .line 608
    .local v24, lengthValue:I
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    .line 610
    .local v20, filter:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STANDARD:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 611
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v31

    .line 612
    .restart local v31       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 613
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 614
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v31

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 616
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 618
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 619
    .restart local v26       #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_4

    .line 620
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.p.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_4
    check-cast v26, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v26           #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    .line 623
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 624
    .restart local v26       #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_5

    .line 625
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.r.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v2, v26

    .line 626
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    .line 628
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    packed-switch v2, :pswitch_data_0

    .line 659
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string/jumbo v4, "unknown.encryption.type.r.eq.1"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    :pswitch_0
    const/4 v8, 0x0

    .line 760
    .end local v26           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v31           #s:Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v2, Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move/from16 v0, v24

    invoke-virtual {v2, v8, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setCryptoMode(II)V

    .line 763
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STANDARD:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByOwnerPassword([B[B[B[BI)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v4, v2, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x3

    if-eq v2, v7, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_21

    :cond_7
    const/16 v2, 0x10

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->equalsArray([B[BI)Z

    move-result v2

    if-nez v2, :cond_23

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByUserPassword([B[B[BI)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v4, v2, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x3

    if-eq v2, v7, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_22

    :cond_8
    const/16 v2, 0x10

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->equalsArray([B[BI)Z

    move-result v2

    if-nez v2, :cond_24

    .line 770
    new-instance v2, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string/jumbo v4, "bad.user.password"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    .restart local v26       #o:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v31       #s:Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 634
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_9

    .line 635
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.length.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object/from16 v2, v26

    .line 636
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v24

    .line 637
    const/16 v2, 0x80

    move/from16 v0, v24

    if-gt v0, v2, :cond_a

    const/16 v2, 0x28

    move/from16 v0, v24

    if-lt v0, v2, :cond_a

    rem-int/lit8 v2, v24, 0x8

    if-eqz v2, :cond_b

    .line 638
    :cond_a
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.length.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_b
    const/4 v8, 0x1

    .line 640
    goto/16 :goto_1

    .line 642
    :pswitch_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 643
    .local v11, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_c

    .line 644
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "cf.not.found.encryption"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 645
    :cond_c
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 646
    .restart local v11       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_d

    .line 647
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "stdcf.not.found.encryption"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_d
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 649
    const/4 v8, 0x1

    .line 654
    :goto_4
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 655
    .local v13, em:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 656
    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_1

    .line 650
    .end local v13           #em:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_e
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 651
    const/4 v8, 0x2

    goto :goto_4

    .line 653
    :cond_f
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string/jumbo v4, "no.compatible.encryption.found"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 662
    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v31           #s:Ljava/lang/String;
    :cond_10
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PUBSEC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 663
    const/16 v21, 0x0

    .line 664
    .local v21, foundRecipient:Z
    const/16 v18, 0x0

    .line 665
    .local v18, envelopedData:[B
    const/16 v30, 0x0

    .line 667
    .local v30, recipients:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 668
    .restart local v26       #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_11

    .line 669
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.v.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    move-object/from16 v2, v26

    .line 670
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v33

    .line 671
    .local v33, vValue:I
    packed-switch v33, :pswitch_data_1

    .line 711
    :pswitch_3
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string/jumbo v4, "unknown.encryption.type.v.eq.1"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    invoke-static {v4, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 673
    :pswitch_4
    const/4 v8, 0x0

    .line 674
    const/16 v24, 0x28

    .line 675
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    .end local v30           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v30, Lcom/itextpdf/text/pdf/PdfArray;

    .line 713
    .restart local v30       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_5
    const/16 v22, 0x0

    .local v22, i:I
    :goto_6
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1c

    .line 714
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 715
    .local v27, recipient:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 717
    const/4 v9, 0x0

    .line 719
    .local v9, data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    :try_start_0
    new-instance v10, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v9           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .local v10, data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    :try_start_1
    invoke-virtual {v10}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 723
    .local v28, recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_12
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 724
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/bouncycastle/cms/RecipientInformation;

    .line 726
    .local v29, recipientInfo:Lorg/bouncycastle/cms/RecipientInformation;
    invoke-virtual/range {v29 .. v29}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->certificate:Ljava/security/cert/Certificate;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/cms/RecipientId;->match(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v21, :cond_12

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKey:Ljava/security/Key;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->certificateKeyProvider:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Ljava/security/Key;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    .line 728
    const/16 v21, 0x1

    goto :goto_7

    .line 678
    .end local v10           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .end local v22           #i:I
    .end local v27           #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v28           #recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    .end local v29           #recipientInfo:Lorg/bouncycastle/cms/RecipientInformation;
    :pswitch_5
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 679
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_13

    .line 680
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.length.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    move-object/from16 v2, v26

    .line 681
    check-cast v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v24

    .line 682
    const/16 v2, 0x80

    move/from16 v0, v24

    if-gt v0, v2, :cond_14

    const/16 v2, 0x28

    move/from16 v0, v24

    if-lt v0, v2, :cond_14

    rem-int/lit8 v2, v24, 0x8

    if-eqz v2, :cond_15

    .line 683
    :cond_14
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "illegal.length.value"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_15
    const/4 v8, 0x1

    .line 685
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    .end local v30           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v30, Lcom/itextpdf/text/pdf/PdfArray;

    .line 686
    .restart local v30       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    goto/16 :goto_5

    .line 688
    :pswitch_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 689
    .restart local v11       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_16

    .line 690
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "cf.not.found.encryption"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    :cond_16
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 692
    .restart local v11       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v11, :cond_17

    .line 693
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "defaultcryptfilter.not.found.encryption"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    :cond_17
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 695
    const/4 v8, 0x1

    .line 696
    const/16 v24, 0x80

    .line 704
    :goto_8
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 705
    .restart local v13       #em:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v13, :cond_18

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 706
    or-int/lit8 v8, v8, 0x8

    .line 708
    :cond_18
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    .end local v30           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v30, Lcom/itextpdf/text/pdf/PdfArray;

    .line 709
    .restart local v30       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    goto/16 :goto_5

    .line 698
    .end local v13           #em:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_19
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 699
    const/4 v8, 0x2

    .line 700
    const/16 v24, 0x80

    goto :goto_8

    .line 703
    :cond_1a
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string/jumbo v4, "no.compatible.encryption.found"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    .end local v11           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v9       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v22       #i:I
    .restart local v27       #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v19

    .line 733
    .local v19, f:Ljava/lang/Exception;
    :goto_9
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 713
    .end local v9           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .end local v19           #f:Ljava/lang/Exception;
    .restart local v10       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v28       #recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_1b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 737
    .end local v10           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .end local v27           #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v28           #recipientCertificatesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_1c
    if-eqz v21, :cond_1d

    if-nez v18, :cond_1e

    .line 738
    :cond_1d
    new-instance v2, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;

    const-string/jumbo v4, "bad.certificate.and.key"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/text/exceptions/UnsupportedPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    :cond_1e
    const/16 v25, 0x0

    .line 744
    .local v25, md:Ljava/security/MessageDigest;
    :try_start_2
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v25

    .line 745
    const/4 v2, 0x0

    const/16 v4, 0x14

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 746
    const/16 v22, 0x0

    :goto_a
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1f

    .line 747
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v16

    .line 748
    .local v16, encodedRecipient:[B
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 746
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 750
    .end local v16           #encodedRecipient:[B
    :cond_1f
    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_20

    .line 751
    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 752
    :cond_20
    invoke-virtual/range {v25 .. v25}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    goto/16 :goto_1

    .line 754
    :catch_1
    move-exception v19

    .line 755
    .restart local v19       #f:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 766
    .end local v18           #envelopedData:[B
    .end local v19           #f:Ljava/lang/Exception;
    .end local v21           #foundRecipient:Z
    .end local v22           #i:I
    .end local v25           #md:Ljava/security/MessageDigest;
    .end local v26           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v30           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v33           #vValue:I
    :cond_21
    const/16 v2, 0x20

    goto/16 :goto_2

    .line 769
    :cond_22
    const/16 v2, 0x20

    goto/16 :goto_3

    .line 774
    :cond_23
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    .line 781
    :cond_24
    :goto_b
    const/16 v23, 0x0

    .local v23, k:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_26

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/itextpdf/text/pdf/PdfString;

    .line 783
    .local v32, str:Lcom/itextpdf/text/pdf/PdfString;
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;->decrypt(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 781
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 776
    .end local v23           #k:I
    .end local v32           #str:Lcom/itextpdf/text/pdf/PdfString;
    :cond_25
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PUBSEC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByEncryptionKey([BI)V

    .line 778
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    goto :goto_b

    .line 786
    .restart local v23       #k:I
    :cond_26
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 787
    check-cast v15, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v15           #encDic:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->encryptionError:Z

    goto/16 :goto_0

    .line 732
    .end local v23           #k:I
    .restart local v10       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v15       #encDic:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v18       #envelopedData:[B
    .restart local v21       #foundRecipient:Z
    .restart local v22       #i:I
    .restart local v26       #o:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v27       #recipient:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v30       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v33       #vValue:I
    :catch_2
    move-exception v19

    move-object v9, v10

    .end local v10           #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    .restart local v9       #data:Lorg/bouncycastle/cms/CMSEnvelopedData;
    goto/16 :goto_9

    .line 628
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 671
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 751
    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public static releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, -0x1

    .line 945
    if-nez p0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    instance-of v2, p0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 952
    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 953
    .local v1, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    .line 954
    .local v0, reader:Lcom/itextpdf/text/pdf/PdfReader;
    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    if-eq v2, v5, :cond_2

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 955
    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 957
    :cond_2
    iput v5, v0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    goto :goto_0
.end method

.method private replaceNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z
    .locals 11
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v9, 0x1

    .line 2802
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 2803
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2804
    .local v6, objIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2805
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, p1

    .line 2806
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2807
    .local v3, ob2:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 2808
    .local v2, name:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 2809
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2810
    move-object v2, v3

    .line 2813
    .end local v2           #name:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2814
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_5

    move-object v8, p1

    .line 2815
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2816
    invoke-direct {p0, v6, p1}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    move v8, v9

    .line 2843
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_1
    return v8

    .line 2811
    .restart local v2       #name:Ljava/lang/Object;
    .restart local v3       #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2812
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto :goto_0

    .local v2, name:Ljava/lang/Object;
    :cond_2
    move-object v8, p1

    .line 2820
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2821
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2822
    .local v5, obj2Idx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    move-object v1, v3

    .line 2823
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2824
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfName;

    .line 2825
    .local v7, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2826
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 2827
    .local v4, ob3:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_3

    .line 2828
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2829
    move-object v2, v4

    .line 2833
    .end local v2           #name:Ljava/lang/Object;
    :cond_3
    :goto_2
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2834
    .restart local v0       #dest:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_5

    .line 2835
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2836
    invoke-direct {p0, v5, v3}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2837
    invoke-direct {p0, v6, p1}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    move v8, v9

    .line 2838
    goto :goto_1

    .line 2830
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v2       #name:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2831
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto :goto_2

    .line 2843
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #ob3:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #obj2Idx:I
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfName;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "idx"
    .parameter "obj"

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 2
    .parameter "obj"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    return-object v0
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3119
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V

    .line 3120
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 2889
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-nez v1, :cond_0

    .line 2897
    :goto_0
    return-void

    .line 2892
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public computeUserPassword()[B
    .locals 2

    .prologue
    .line 3591
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3592
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->password:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeUserPassword([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public consolidateNamedDestinations()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2768
    iget-boolean v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    if-eqz v10, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return-void

    .line 2770
    :cond_1
    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations:Z

    .line 2771
    invoke-virtual {p0, v11}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestination(Z)Ljava/util/HashMap;

    move-result-object v6

    .line 2772
    .local v6, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2774
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v10

    if-gt v5, v10, :cond_8

    .line 2775
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 2777
    .local v9, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .local v3, annotsRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2778
    .local v2, annots:Lcom/itextpdf/text/pdf/PdfArray;
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2779
    .local v1, annotIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2780
    if-nez v2, :cond_3

    .line 2781
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2774
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2784
    :cond_3
    const/4 v4, 0x0

    .line 2785
    .local v4, commitAnnots:Z
    const/4 v0, 0x0

    .local v0, an:I
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 2786
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 2787
    .local v7, objRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {p0, v7, v6}, Lcom/itextpdf/text/pdf/PdfReader;->replaceNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2788
    const/4 v4, 0x1

    .line 2785
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2790
    .end local v7           #objRef:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    if-eqz v4, :cond_6

    .line 2791
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2792
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2793
    :cond_7
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v10, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    goto :goto_2

    .line 2795
    .end local v0           #an:I
    .end local v1           #annotIdx:I
    .end local v2           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #annotsRef:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v4           #commitAnnots:Z
    .end local v9           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2796
    .local v8, outlines:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v8, :cond_0

    .line 2798
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/itextpdf/text/pdf/PdfReader;->iterateBookmarks(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public createFakeFontSubsets()I
    .locals 10

    .prologue
    .line 2473
    const/4 v7, 0x0

    .line 2474
    .local v7, total:I
    const/4 v2, 0x1

    .local v2, k:I
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 2475
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2476
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2474
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 2478
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2479
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2481
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MMTYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2484
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v6

    .line 2485
    .local v6, s:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2487
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getFontName(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v6

    .line 2488
    if-eqz v6, :cond_0

    .line 2490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itextpdf/text/pdf/BaseFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2491
    .local v4, ns:Ljava/lang/String;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2492
    .local v1, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 2494
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE3:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2497
    :cond_3
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2498
    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 2499
    .local v3, newName:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2500
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2501
    invoke-direct {p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2502
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2505
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #newName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #ns:Ljava/lang/String;
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #s:Ljava/lang/String;
    :cond_4
    return v7
.end method

.method public dumpPerc()D
    .locals 6

    .prologue
    .line 1078
    const/4 v1, 0x0

    .line 1079
    .local v1, total:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1080
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1081
    add-int/lit8 v1, v1, 0x1

    .line 1079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_1
    int-to-double v2, v1

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public eliminateSharedStreams()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2211
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    if-nez v9, :cond_1

    .line 2257
    :cond_0
    return-void

    .line 2213
    :cond_1
    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->sharedStreams:Z

    .line 2214
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 2216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    .local v4, newRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRIndirectReference;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2218
    .local v5, newStreams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRStream;>;"
    new-instance v8, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 2219
    .local v8, visited:Lcom/itextpdf/text/pdf/IntHashtable;
    const/4 v3, 0x1

    .local v3, k:I
    :goto_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v9

    if-gt v3, v9, :cond_7

    .line 2220
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v3}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2221
    .local v6, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_3

    .line 2219
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2223
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2224
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_2

    .line 2226
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2227
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2228
    .local v7, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2230
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    new-instance v9, Lcom/itextpdf/text/pdf/PRStream;

    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v9, v1, v13}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2234
    .restart local v1       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_1

    .line 2236
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_5
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v1

    .line 2237
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2238
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 2239
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2240
    .restart local v7       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2242
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    new-instance v10, Lcom/itextpdf/text/pdf/PRStream;

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v10, v9, v13}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2246
    :cond_6
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_3

    .line 2250
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v2           #j:I
    .end local v6           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2252
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 2253
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2254
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2255
    .restart local v7       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9, v12}, Lcom/itextpdf/text/pdf/PRIndirectReference;->setNumber(II)V

    .line 2252
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;
    .locals 2

    .prologue
    .line 3024
    new-instance v0, Lcom/itextpdf/text/pdf/AcroFields;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/text/pdf/AcroFields;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    return-object v0
.end method

.method public getAcroForm()Lcom/itextpdf/text/pdf/PRAcroForm;
    .locals 4

    .prologue
    .line 332
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    if-nez v2, :cond_0

    .line 333
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroFormParsed:Z

    .line 334
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 335
    .local v1, form:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PRAcroForm;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PRAcroForm;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    .line 338
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v3, v2}, Lcom/itextpdf/text/pdf/PRAcroForm;->readAcroForm(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v1           #form:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    return-object v2

    .line 340
    .restart local v1       #form:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->acroForm:Lcom/itextpdf/text/pdf/PRAcroForm;

    goto :goto_0
.end method

.method public getBoxSize(ILjava/lang/String;)Lcom/itextpdf/text/Rectangle;
    .locals 3
    .parameter "index"
    .parameter "boxName"

    .prologue
    .line 431
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 432
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v0, 0x0

    .line 433
    .local v0, box:Lcom/itextpdf/text/pdf/PdfArray;
    const-string/jumbo v2, "trim"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 443
    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 444
    const/4 v2, 0x0

    .line 445
    :goto_1
    return-object v2

    .line 435
    :cond_1
    const-string/jumbo v2, "art"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 437
    :cond_2
    const-string/jumbo v2, "bleed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 439
    :cond_3
    const-string/jumbo v2, "crop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 441
    :cond_4
    const-string/jumbo v2, "media"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .end local v0           #box:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v0       #box:Lcom/itextpdf/text/pdf/PdfArray;
    goto :goto_0

    .line 445
    :cond_5
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    goto :goto_1
.end method

.method public getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getCertificationLevel()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3544
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3545
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 3562
    :cond_0
    :goto_0
    return v3

    .line 3547
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DOCMDP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3548
    if-eqz v1, :cond_0

    .line 3550
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->REFERENCE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 3551
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 3553
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3554
    if-eqz v1, :cond_0

    .line 3556
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 3557
    if-eqz v1, :cond_0

    .line 3559
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 3560
    .local v2, p:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v2, :cond_0

    .line 3562
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public getCropBox(I)Lcom/itextpdf/text/Rectangle;
    .locals 3
    .parameter "index"

    .prologue
    .line 418
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 419
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 420
    .local v0, cropBox:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    .line 422
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v2

    goto :goto_0
.end method

.method public getCryptoMode()I
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-nez v0, :cond_0

    .line 3578
    const/4 v0, -0x1

    .line 3580
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->getCryptoMode()I

    move-result v0

    goto :goto_0
.end method

.method getCryptoRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 4

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-nez v0, :cond_0

    .line 3514
    const/4 v0, 0x0

    .line 3515
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->cryptoRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(III)V

    goto :goto_0
.end method

.method getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    return-object v0
.end method

.method public getEofPos()I
    .locals 1

    .prologue
    .line 2322
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:I

    return v0
.end method

.method public getFileLength()I
    .locals 1

    .prologue
    .line 3166
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:I

    return v0
.end method

.method public getInfo()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 454
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 455
    .local v2, info:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_1

    .line 475
    :cond_0
    return-object v4

    .line 457
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v3, v0

    .line 458
    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 459
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 460
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_2

    .line 462
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 473
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 465
    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :pswitch_0
    check-cast v5, Lcom/itextpdf/text/pdf/PdfString;

    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v6

    .line 466
    goto :goto_1

    .line 469
    .restart local v5       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :pswitch_1
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 463
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getJavaScript()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3072
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 3074
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 3075
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getJavaScript(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3078
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getJavaScript(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Ljava/lang/String;
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    .line 3034
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3035
    .local v6, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_1

    .line 3063
    :cond_0
    :goto_0
    return-object v9

    .line 3037
    :cond_1
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3038
    .local v3, js:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 3040
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfNameTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v4

    .line 3041
    .local v4, jscript:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 3042
    .local v8, sortedNames:[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sortedNames:[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 3043
    .restart local v8       #sortedNames:[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3044
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3045
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    array-length v9, v8

    if-ge v5, v9, :cond_6

    .line 3046
    aget-object v9, v8, v5

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3047
    .local v2, j:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_3

    .line 3045
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3049
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 3050
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_2

    .line 3051
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3052
    check-cast v7, Lcom/itextpdf/text/pdf/PdfString;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 3053
    .restart local v7       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3054
    check-cast v7, Lcom/itextpdf/text/pdf/PRStream;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v7, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 3055
    .local v1, bytes:[B
    array-length v9, v1

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    aget-byte v9, v1, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 3056
    const-string/jumbo v9, "UnicodeBig"

    invoke-static {v1, v9}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3059
    :goto_3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 3058
    :cond_5
    const-string/jumbo v9, "PDF"

    invoke-static {v1, v9}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 3063
    .end local v1           #bytes:[B
    .end local v2           #j:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getLastXref()I
    .locals 1

    .prologue
    .line 2306
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I

    return v0
.end method

.method public getLinks(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2660
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2661
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2662
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2663
    .local v3, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2664
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 2665
    .local v1, annots:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2666
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2668
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->LINK:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2669
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;

    invoke-direct {v5, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2673
    .end local v0           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #j:I
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2674
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2675
    return-object v4
.end method

.method public getMetadata()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2281
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2282
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v3, v1, Lcom/itextpdf/text/pdf/PRStream;

    if-nez v3, :cond_0

    .line 2283
    const/4 v0, 0x0

    .line 2298
    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    return-object v0

    .line 2284
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    .line 2285
    .local v2, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    const/4 v0, 0x0

    .line 2287
    .local v0, b:[B
    :try_start_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2288
    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2292
    :try_start_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2294
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2291
    :catchall_0
    move-exception v3

    .line 2292
    :try_start_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2296
    :goto_1
    throw v3

    .line 2294
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getNamedDestination()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestination(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getNamedDestination(Z)Ljava/util/HashMap;
    .locals 2
    .parameter "keepNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2541
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestinationFromNames(Z)Ljava/util/HashMap;

    move-result-object v0

    .line 2542
    .local v0, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestinationFromStrings()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2543
    return-object v0
.end method

.method public getNamedDestinationFromNames()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2554
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestinationFromNames(Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getNamedDestinationFromNames(Z)Ljava/util/HashMap;
    .locals 9
    .parameter "keepNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2565
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2566
    .local v6, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2567
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2568
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 2584
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    return-object v6

    .line 2570
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v4

    .line 2571
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/itextpdf/text/pdf/PdfName;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 2572
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getNameArray(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2573
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_2

    .line 2575
    if-eqz p1, :cond_3

    .line 2576
    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2579
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2580
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNamedDestinationFromStrings()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2593
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2594
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2595
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 2596
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2597
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 2598
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfNameTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v4

    .line 2599
    .local v4, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2600
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2601
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getNameArray(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2602
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 2603
    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2605
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2611
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;>;"
    .end local v4           #names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_2
    return-object v4
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v0

    return v0
.end method

.method public getPageContent(I)[B
    .locals 3
    .parameter "pageNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 2012
    .local v0, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2013
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageContent(ILcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2016
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getPageContent(ILcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 9
    .parameter "pageNum"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1976
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 1977
    .local v6, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_0

    .line 1978
    const/4 v7, 0x0

    .line 2001
    :goto_0
    return-object v7

    .line 1979
    :cond_0
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 1980
    .local v3, contents:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v3, :cond_1

    .line 1981
    new-array v7, v8, [B

    goto :goto_0

    .line 1982
    :cond_1
    const/4 v2, 0x0

    .line 1983
    .local v2, bout:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1984
    check-cast v3, Lcom/itextpdf/text/pdf/PRStream;

    .end local v3           #contents:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v7

    goto :goto_0

    .line 1986
    .restart local v3       #contents:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v0, v3

    .line 1987
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1988
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #bout:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1989
    .restart local v2       #bout:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 1990
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1991
    .local v4, item:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1989
    .end local v4           #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1993
    .restart local v4       #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .end local v4           #item:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v4, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 1994
    .local v1, b:[B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1995
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_3

    .line 1996
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1998
    .end local v1           #b:[B
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_0

    .line 2001
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #k:I
    :cond_6
    new-array v7, v8, [B

    goto :goto_0
.end method

.method public getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 1929
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1930
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1931
    const/4 v0, 0x0

    .line 1934
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    :goto_0
    return-object v0

    .line 1932
    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    if-eqz v1, :cond_0

    .line 1933
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    goto :goto_0
.end method

.method public getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 1942
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1943
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 1944
    return-object v0
.end method

.method public getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method public getPageRotation(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v0

    return v0
.end method

.method getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I
    .locals 3
    .parameter "page"

    .prologue
    .line 357
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    .line 358
    .local v1, rotate:Lcom/itextpdf/text/pdf/PdfNumber;
    if-nez v1, :cond_1

    .line 359
    const/4 v0, 0x0

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 362
    .local v0, n:I
    rem-int/lit16 v0, v0, 0x168

    .line 363
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public getPageSize(I)Lcom/itextpdf/text/Rectangle;
    .locals 1
    .parameter "index"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "page"

    .prologue
    .line 405
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 406
    .local v0, mediaBox:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public getPageSizeWithRotation(I)Lcom/itextpdf/text/Rectangle;
    .locals 1
    .parameter "index"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "page"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 382
    .local v0, rect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v1

    .line 383
    .local v1, rotation:I
    :goto_0
    if-lez v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->rotate()Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 385
    add-int/lit8 v1, v1, -0x5a

    goto :goto_0

    .line 387
    :cond_0
    return-object v0
.end method

.method public getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 5
    .parameter "idx"

    .prologue
    const/4 v2, 0x0

    .line 905
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 906
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 917
    :cond_1
    :goto_0
    return-object v1

    .line 908
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 909
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 911
    mul-int/lit8 v3, p1, 0x2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v4, v4

    if-lt v3, v4, :cond_3

    move-object v1, v2

    .line 912
    goto :goto_0

    .line 913
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->readSingleObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 914
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 915
    if-eqz v1, :cond_1

    .line 916
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "idx"

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 895
    .local v0, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 896
    return-object v0
.end method

.method protected getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfReaderInstance;
    .locals 1
    .parameter "writer"

    .prologue
    .line 310
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    return-object v0
.end method

.method public getPdfVersion()C
    .locals 1

    .prologue
    .line 2331
    iget-char v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C

    return v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 2348
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pValue:I

    return v0
.end method

.method public getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleViewerPreferences()I
    .locals 1

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->getViewerPreferences(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->getPageLayoutAndMode()I

    move-result v0

    return v0
.end method

.method public getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getXrefSize()I
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public is128Key()Z
    .locals 2

    .prologue
    .line 2356
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->rValue:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppendable()Z
    .locals 1

    .prologue
    .line 3140
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 2339
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    return v0
.end method

.method public isHybridXref()Z
    .locals 1

    .prologue
    .line 3174
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    return v0
.end method

.method public isMetadataEncrypted()Z
    .locals 1

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-nez v0, :cond_0

    .line 3585
    const/4 v0, 0x0

    .line 3587
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->decrypt:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v0

    goto :goto_0
.end method

.method public isNewXrefType()Z
    .locals 1

    .prologue
    .line 3158
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    return v0
.end method

.method public final isOpenedWithFullPermissions()Z
    .locals 1

    .prologue
    .line 3573
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->ownerPasswordUsed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/itextpdf/text/pdf/PdfReader;->unethicalreading:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRebuilt()Z
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    return v0
.end method

.method public isTampered()Z
    .locals 1

    .prologue
    .line 2264
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    return v0
.end method

.method protected killXref(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    .line 2021
    if-nez p1, :cond_1

    .line 2049
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    instance-of v6, p1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2025
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v4, p1

    .line 2035
    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2036
    .local v4, t:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2037
    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2036
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2027
    .end local v2           #i:I
    .end local v4           #t:Lcom/itextpdf/text/pdf/PdfArray;
    :pswitch_2
    check-cast p1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v5

    .line 2028
    .local v5, xr:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 2029
    .restart local p1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2030
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 2031
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .end local v5           #xr:I
    :pswitch_3
    move-object v0, p1

    .line 2042
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2043
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 2044
    .local v1, element:Lcom/itextpdf/text/pdf/PdfName;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .end local v1           #element:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 2025
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public makeRemoteNamedDestinationsLocal()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2695
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    if-eqz v9, :cond_1

    .line 2722
    :cond_0
    return-void

    .line 2697
    :cond_1
    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->remoteToLocalNamedDestinations:Z

    .line 2698
    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/PdfReader;->getNamedDestination(Z)Ljava/util/HashMap;

    move-result-object v6

    .line 2699
    .local v6, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2701
    const/4 v5, 0x1

    .local v5, k:I
    :goto_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v9

    if-gt v5, v9, :cond_0

    .line 2702
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 2704
    .local v8, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .local v3, annotsRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 2705
    .local v2, annots:Lcom/itextpdf/text/pdf/PdfArray;
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 2706
    .local v1, annotIdx:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 2707
    if-nez v2, :cond_3

    .line 2708
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2701
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2711
    :cond_3
    const/4 v4, 0x0

    .line 2712
    .local v4, commitAnnots:Z
    const/4 v0, 0x0

    .local v0, an:I
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 2713
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 2714
    .local v7, objRef:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {p0, v7, v6}, Lcom/itextpdf/text/pdf/PdfReader;->convertNamedDestination(Lcom/itextpdf/text/pdf/PdfObject;Ljava/util/HashMap;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2715
    const/4 v4, 0x1

    .line 2712
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2717
    .end local v7           #objRef:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    if-eqz v4, :cond_6

    .line 2718
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2719
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2720
    :cond_7
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    goto :goto_1
.end method

.method protected readArray()Lcom/itextpdf/text/pdf/PdfArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1557
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1559
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 1560
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    .line 1561
    .local v2, type:I
    neg-int v3, v2

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1567
    return-object v0

    .line 1563
    :cond_0
    neg-int v3, v2

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1564
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v4, "unexpected.gt.gt"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1565
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0
.end method

.method protected readDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1537
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1539
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1540
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_0

    .line 1553
    return-object v0

    .line 1542
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_1

    .line 1543
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v5, "dictionary.key.is.not.a.name"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1544
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;Z)V

    .line 1545
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 1546
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v3

    .line 1547
    .local v3, type:I
    neg-int v4, v3

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1548
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v5, "unexpected.gt.gt"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1549
    :cond_2
    neg-int v4, v3

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1550
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v5, "unexpected.close.bracket"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1551
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method protected readDocObj()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1087
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v9, streams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRStream;>;"
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v11, v11

    div-int/lit8 v11, v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    .line 1089
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v11, v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v12}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1090
    const/4 v5, 0x2

    .local v5, k:I
    :goto_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v10, v10

    if-ge v5, v10, :cond_6

    .line 1091
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    aget v8, v10, v5

    .line 1092
    .local v8, pos:I
    if-lez v8, :cond_0

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    add-int/lit8 v11, v5, 0x1

    aget v10, v10, v11

    if-lez v10, :cond_1

    .line 1090
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1095
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1096
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v10, v11, :cond_2

    .line 1097
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v11, "invalid.object.number"

    invoke-static {v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1098
    :cond_2
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    .line 1099
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1100
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v10, v11, :cond_3

    .line 1101
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v11, "invalid.generation.number"

    invoke-static {v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1102
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    .line 1103
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1104
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "obj"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1105
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v11, "token.obj.expected"

    invoke-static {v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1108
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 1109
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1110
    move-object v0, v7

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1113
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v1

    .line 1114
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .restart local v7       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2

    .line 1118
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v8           #pos:I
    :cond_6
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    .line 1119
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/PdfReader;->checkPRStreamLength(Lcom/itextpdf/text/pdf/PRStream;)V

    .line 1118
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1121
    :cond_7
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDecryptedDocObj()V

    .line 1122
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    if-eqz v10, :cond_9

    .line 1123
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1124
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1125
    .local v6, n:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 1126
    .local v3, h:Lcom/itextpdf/text/pdf/IntHashtable;
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRStream;

    invoke-virtual {p0, v10, v3}, Lcom/itextpdf/text/pdf/PdfReader;->readObjStm(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/IntHashtable;)V

    .line 1127
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1129
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    .end local v3           #h:Lcom/itextpdf/text/pdf/IntHashtable;
    .end local v6           #n:I
    :cond_8
    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    .line 1131
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_9
    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    .line 1132
    return-void
.end method

.method protected readDocObjPartial()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    .line 983
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 984
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDecryptedDocObj()V

    .line 985
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/IntHashtable;->getKeys()[I

    move-result-object v1

    .line 987
    .local v1, keys:[I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 988
    aget v2, v1, v0

    .line 989
    .local v2, n:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 990
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    .end local v0           #k:I
    .end local v1           #keys:[I
    .end local v2           #n:I
    :cond_0
    return-void
.end method

.method protected readObjStm(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/IntHashtable;)V
    .locals 11
    .parameter "stream"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 1183
    .local v2, first:I
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1184
    .local v4, n:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 1185
    .local v1, b:[B
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1186
    .local v8, saveTokens:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v9, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v9, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1188
    :try_start_0
    new-array v0, v4, [I

    .line 1189
    .local v0, address:[I
    new-array v6, v4, [I

    .line 1190
    .local v6, objNumber:[I
    const/4 v7, 0x1

    .line 1191
    .local v7, ok:Z
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1192
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v7

    .line 1193
    if-nez v7, :cond_1

    .line 1209
    :cond_0
    :goto_1
    if-nez v7, :cond_4

    .line 1210
    new-instance v9, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v10, "error.reading.objstm"

    invoke-static {v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    .end local v0           #address:[I
    .end local v3           #k:I
    .end local v6           #objNumber:[I
    .end local v7           #ok:Z
    :catchall_0
    move-exception v9

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    throw v9

    .line 1195
    .restart local v0       #address:[I
    .restart local v3       #k:I
    .restart local v6       #objNumber:[I
    .restart local v7       #ok:Z
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v9, v10, :cond_2

    .line 1196
    const/4 v7, 0x0

    .line 1197
    goto :goto_1

    .line 1199
    :cond_2
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v9

    aput v9, v6, v3

    .line 1200
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v7

    .line 1201
    if-eqz v7, :cond_0

    .line 1203
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v9, v10, :cond_3

    .line 1204
    const/4 v7, 0x0

    .line 1205
    goto :goto_1

    .line 1207
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v9

    add-int/2addr v9, v2

    aput v9, v0, v3

    .line 1191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1211
    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    .line 1212
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1213
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    aget v10, v0, v3

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1214
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 1215
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    aget v10, v6, v3

    invoke-virtual {v9, v10, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1220
    :cond_6
    iput-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1222
    return-void
.end method

.method protected readOneObjStm(Lcom/itextpdf/text/pdf/PRStream;I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 8
    .parameter "stream"
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PRStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 1040
    .local v2, first:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 1041
    .local v1, b:[B
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1042
    .local v5, saveTokens:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v6, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v6, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, address:I
    const/4 v4, 0x1

    .line 1046
    .local v4, ok:Z
    add-int/lit8 p2, p2, 0x1

    .line 1047
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 1048
    :try_start_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    .line 1049
    if-nez v4, :cond_1

    .line 1064
    :cond_0
    :goto_1
    if-nez v4, :cond_4

    .line 1065
    new-instance v6, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v7, "error.reading.objstm"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :catchall_0
    move-exception v6

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    throw v6

    .line 1051
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v6, v7, :cond_2

    .line 1052
    const/4 v4, 0x0

    .line 1053
    goto :goto_1

    .line 1055
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    .line 1056
    if-eqz v4, :cond_0

    .line 1058
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v6, v7, :cond_3

    .line 1059
    const/4 v4, 0x0

    .line 1060
    goto :goto_1

    .line 1062
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v6

    add-int v0, v6, v2

    .line 1047
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1066
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1067
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1070
    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    return-object v6
.end method

.method protected readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1577
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v11

    .line 1578
    .local v11, type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader$1;->$SwitchMap$com$itextpdf$text$pdf$PRTokeniser$TokenType:[I

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1644
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v10

    .line 1645
    .local v10, sv:Ljava/lang/String;
    const-string/jumbo v12, "null"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1646
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-nez v12, :cond_8

    .line 1647
    new-instance v9, Lcom/itextpdf/text/pdf/PdfNull;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    .line 1663
    .end local v10           #sv:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1580
    :pswitch_0
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 1581
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 1582
    .local v3, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 1583
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v6

    .line 1587
    .local v6, pos:I
    :cond_0
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    .line 1588
    .local v4, hasNext:Z
    if-eqz v4, :cond_1

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v12, v13, :cond_0

    .line 1590
    :cond_1
    if-eqz v4, :cond_5

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "stream"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1594
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v2

    .line 1595
    .local v2, ch:I
    const/16 v12, 0x20

    if-eq v2, v12, :cond_2

    const/16 v12, 0x9

    if-eq v2, v12, :cond_2

    if-eqz v2, :cond_2

    const/16 v12, 0xc

    if-eq v2, v12, :cond_2

    .line 1596
    const/16 v12, 0xa

    if-eq v2, v12, :cond_3

    .line 1597
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v2

    .line 1598
    :cond_3
    const/16 v12, 0xa

    if-eq v2, v12, :cond_4

    .line 1599
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 1600
    :cond_4
    new-instance v9, Lcom/itextpdf/text/pdf/PRStream;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v12

    invoke-direct {v9, p0, v12}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    .line 1601
    .local v9, stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-virtual {v9, v3}, Lcom/itextpdf/text/pdf/PRStream;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1603
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    iget v13, p0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    invoke-virtual {v9, v12, v13}, Lcom/itextpdf/text/pdf/PRStream;->setObjNum(II)V

    goto :goto_0

    .line 1608
    .end local v2           #ch:I
    .end local v9           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :cond_5
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    move-object v9, v3

    .line 1609
    goto :goto_0

    .line 1613
    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #hasNext:Z
    .end local v6           #pos:I
    :pswitch_1
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    .line 1614
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readArray()Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 1615
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    move-object v9, v0

    .line 1616
    goto/16 :goto_0

    .line 1619
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :pswitch_2
    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1621
    :pswitch_3
    new-instance v12, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->isHexString()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v8

    .line 1623
    .local v8, str:Lcom/itextpdf/text/pdf/PdfString;
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    iget v13, p0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    invoke-virtual {v8, v12, v13}, Lcom/itextpdf/text/pdf/PdfString;->setObjNum(II)V

    .line 1624
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    .line 1625
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v9, v8

    .line 1627
    goto/16 :goto_0

    .line 1629
    .end local v8           #str:Lcom/itextpdf/text/pdf/PdfString;
    :pswitch_4
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->staticNames:Ljava/util/Map;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 1630
    .local v1, cachedName:Lcom/itextpdf/text/pdf/PdfName;
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-lez v12, :cond_7

    if-eqz v1, :cond_7

    move-object v9, v1

    .line 1631
    goto/16 :goto_0

    .line 1634
    :cond_7
    new-instance v9, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1638
    .end local v1           #cachedName:Lcom/itextpdf/text/pdf/PdfName;
    :pswitch_5
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getReference()I

    move-result v5

    .line 1639
    .local v5, num:I
    new-instance v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getGeneration()I

    move-result v12

    invoke-direct {v7, p0, v5, v12}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;II)V

    .local v7, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object v9, v7

    .line 1640
    goto/16 :goto_0

    .line 1642
    .end local v5           #num:I
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :pswitch_6
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "unexpected.end.of.file"

    invoke-static {v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1649
    .restart local v10       #sv:Ljava/lang/String;
    :cond_8
    sget-object v9, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    goto/16 :goto_0

    .line 1651
    :cond_9
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1652
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-nez v12, :cond_a

    .line 1653
    new-instance v9, Lcom/itextpdf/text/pdf/PdfBoolean;

    const/4 v12, 0x1

    invoke-direct {v9, v12}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    goto/16 :goto_0

    .line 1655
    :cond_a
    sget-object v9, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto/16 :goto_0

    .line 1657
    :cond_b
    const-string/jumbo v12, "false"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1658
    iget v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->readDepth:I

    if-nez v12, :cond_c

    .line 1659
    new-instance v9, Lcom/itextpdf/text/pdf/PdfBoolean;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    goto/16 :goto_0

    .line 1661
    :cond_c
    sget-object v9, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    goto/16 :goto_0

    .line 1663
    :cond_d
    new-instance v9, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ordinal()I

    move-result v12

    neg-int v12, v12

    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected readPages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 977
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 978
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfReader$1;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    .line 979
    return-void
.end method

.method protected readPdf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:I

    .line 494
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkPdfHeader()C

    move-result v2

    iput-char v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXref()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDocObj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 523
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 524
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPages()V

    .line 525
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->eliminateSharedStreams()V

    .line 526
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->removeUnusedObjects()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    :try_start_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 536
    :goto_2
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 501
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->rebuildXref()V

    .line 502
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 504
    :catch_1
    move-exception v1

    .line 505
    .local v1, ne:Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v3, "rebuild.failed.1.original.message.2"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 529
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ne:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 530
    :try_start_7
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 534
    :goto_3
    throw v2

    .line 511
    :catch_2
    move-exception v0

    .line 512
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_8
    instance-of v2, v0, Lcom/itextpdf/text/exceptions/BadPasswordException;

    if-eqz v2, :cond_0

    .line 513
    new-instance v2, Lcom/itextpdf/text/exceptions/BadPasswordException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->encryptionError:Z

    if-eqz v2, :cond_2

    .line 515
    :cond_1
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 517
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->encrypted:Z

    .line 518
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->rebuildXref()V

    .line 519
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I

    .line 520
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDocObj()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 532
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method protected readPdfPartial()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->fileLength:I

    .line 541
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkPdfHeader()C

    move-result v2

    iput-char v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pdfVersion:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 543
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXref()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 555
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readDocObjPartial()V

    .line 556
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPages()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 562
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->rebuilt:Z

    .line 548
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->rebuildXref()V

    .line 549
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 551
    :catch_1
    move-exception v1

    .line 552
    .local v1, ne:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v3, "rebuild.failed.1.original.message.2"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 558
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ne:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 559
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 560
    :goto_1
    throw v0

    .line 559
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method protected readSingleObject(I)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 10
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 996
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 997
    mul-int/lit8 v3, p1, 0x2

    .line 998
    .local v3, k2:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    aget v5, v7, v3

    .line 999
    .local v5, pos:I
    if-gez v5, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-object v4

    .line 1001
    :cond_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    if-lez v7, :cond_2

    .line 1002
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v5

    .line 1003
    :cond_2
    if-eqz v5, :cond_0

    .line 1005
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1006
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1007
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v7, v8, :cond_3

    .line 1008
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v8, "invalid.object.number"

    invoke-static {v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1009
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    iput v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->objNum:I

    .line 1010
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1011
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v7, v8, :cond_4

    .line 1012
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v8, "invalid.generation.number"

    invoke-static {v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1013
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    iput v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->objGen:I

    .line 1014
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1015
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "obj"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1016
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v8, "token.obj.expected"

    invoke-static {v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1019
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1020
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 1021
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfString;

    .line 1022
    .local v6, str:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v6, p0}, Lcom/itextpdf/text/pdf/PdfString;->decrypt(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 1020
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1024
    .end local v6           #str:Lcom/itextpdf/text/pdf/PdfString;
    :cond_6
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1025
    move-object v0, v4

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    move-object v7, v0

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/PdfReader;->checkPRStreamLength(Lcom/itextpdf/text/pdf/PRStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .end local v2           #j:I
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    if-lez v7, :cond_8

    .line 1032
    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    aget v7, v7, v3

    invoke-virtual {p0, v4, v7}, Lcom/itextpdf/text/pdf/PdfReader;->readOneObjStm(Lcom/itextpdf/text/pdf/PRStream;I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1034
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1028
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v1

    .line 1029
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2
.end method

.method protected readXRefStream(I)Z
    .locals 28
    .parameter "ptr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1367
    const/16 v21, 0x0

    .line 1368
    .local v21, thisStream:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v25

    if-nez v25, :cond_0

    .line 1369
    const/16 v25, 0x0

    .line 1474
    :goto_0
    return v25

    .line 1370
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v25

    sget-object v26, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 1371
    const/16 v25, 0x0

    goto :goto_0

    .line 1372
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v21

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v25

    sget-object v26, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 1374
    :cond_2
    const/16 v25, 0x0

    goto :goto_0

    .line 1375
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "obj"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 1376
    :cond_4
    const/16 v25, 0x0

    goto :goto_0

    .line 1377
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    .line 1378
    .local v14, object:Lcom/itextpdf/text/pdf/PdfObject;
    const/16 v20, 0x0

    .line 1379
    .local v20, stm:Lcom/itextpdf/text/pdf/PRStream;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v20, v14

    .line 1380
    check-cast v20, Lcom/itextpdf/text/pdf/PRStream;

    .line 1381
    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->XREF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 1382
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1385
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1386
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v25, v0

    if-nez v25, :cond_8

    .line 1387
    new-instance v25, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1390
    :cond_8
    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v25

    check-cast v25, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->setLength(I)V

    .line 1391
    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v25

    check-cast v25, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    .line 1393
    .local v18, size:I
    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->INDEX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 1394
    .local v13, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v13, :cond_c

    .line 1395
    new-instance v9, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1396
    .local v9, index:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    const/16 v26, 0x1

    aput v18, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add([I)Z

    .line 1400
    :goto_1
    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v23

    check-cast v23, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1401
    .local v23, w:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v16, -0x1

    .line 1402
    .local v16, prev:I
    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 1403
    if-eqz v13, :cond_9

    .line 1404
    check-cast v13, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v13           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v16

    .line 1409
    :cond_9
    mul-int/lit8 v25, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 1411
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    .line 1412
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v25, v0

    if-nez v25, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 1413
    new-instance v25, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct/range {v25 .. v25}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 1414
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v2

    .line 1415
    .local v2, b:[B
    const/4 v4, 0x0

    .line 1416
    .local v4, bptr:I
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1417
    .local v24, wc:[I
    const/4 v10, 0x0

    .local v10, k:I
    :goto_2
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v10, v0, :cond_d

    .line 1418
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v25

    aput v25, v24, v10

    .line 1417
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v2           #b:[B
    .end local v4           #bptr:I
    .end local v9           #index:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #k:I
    .end local v16           #prev:I
    .end local v23           #w:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v24           #wc:[I
    .restart local v13       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    move-object v9, v13

    .line 1399
    check-cast v9, Lcom/itextpdf/text/pdf/PdfArray;

    .restart local v9       #index:Lcom/itextpdf/text/pdf/PdfArray;
    goto/16 :goto_1

    .line 1419
    .end local v13           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v2       #b:[B
    .restart local v4       #bptr:I
    .restart local v10       #k:I
    .restart local v16       #prev:I
    .restart local v23       #w:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v24       #wc:[I
    :cond_d
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_3
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v8, v0, :cond_15

    .line 1420
    invoke-virtual {v9, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v19

    .line 1421
    .local v19, start:I
    add-int/lit8 v25, v8, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v11

    .line 1422
    .local v11, length:I
    add-int v25, v19, v11

    mul-int/lit8 v25, v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    move v12, v11

    .line 1423
    .end local v11           #length:I
    .local v12, length:I
    :goto_4
    add-int/lit8 v11, v12, -0x1

    .end local v12           #length:I
    .restart local v11       #length:I
    if-lez v12, :cond_14

    .line 1424
    const/16 v22, 0x1

    .line 1425
    .local v22, type:I
    const/16 v25, 0x0

    aget v25, v24, v25

    if-lez v25, :cond_e

    .line 1426
    const/16 v22, 0x0

    .line 1427
    const/4 v10, 0x0

    :goto_5
    const/16 v25, 0x0

    aget v25, v24, v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_e

    .line 1428
    shl-int/lit8 v25, v22, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #bptr:I
    .local v5, bptr:I
    aget-byte v26, v2, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v22, v25, v26

    .line 1427
    add-int/lit8 v10, v10, 0x1

    move v4, v5

    .end local v5           #bptr:I
    .restart local v4       #bptr:I
    goto :goto_5

    .line 1430
    :cond_e
    const/4 v6, 0x0

    .line 1431
    .local v6, field2:I
    const/4 v10, 0x0

    :goto_6
    const/16 v25, 0x1

    aget v25, v24, v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_f

    .line 1432
    shl-int/lit8 v25, v6, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #bptr:I
    .restart local v5       #bptr:I
    aget-byte v26, v2, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v6, v25, v26

    .line 1431
    add-int/lit8 v10, v10, 0x1

    move v4, v5

    .end local v5           #bptr:I
    .restart local v4       #bptr:I
    goto :goto_6

    .line 1433
    :cond_f
    const/4 v7, 0x0

    .line 1434
    .local v7, field3:I
    const/4 v10, 0x0

    :goto_7
    const/16 v25, 0x2

    aget v25, v24, v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_10

    .line 1435
    shl-int/lit8 v25, v7, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #bptr:I
    .restart local v5       #bptr:I
    aget-byte v26, v2, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v7, v25, v26

    .line 1434
    add-int/lit8 v10, v10, 0x1

    move v4, v5

    .end local v5           #bptr:I
    .restart local v4       #bptr:I
    goto :goto_7

    .line 1436
    :cond_10
    mul-int/lit8 v3, v19, 0x2

    .line 1437
    .local v3, base:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    aget v25, v25, v3

    if-nez v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    add-int/lit8 v26, v3, 0x1

    aget v25, v25, v26

    if-nez v25, :cond_11

    .line 1438
    packed-switch v22, :pswitch_data_0

    .line 1465
    :cond_11
    :goto_8
    add-int/lit8 v19, v19, 0x1

    move v12, v11

    .line 1466
    .end local v11           #length:I
    .restart local v12       #length:I
    goto :goto_4

    .line 1440
    .end local v12           #length:I
    .restart local v11       #length:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v3

    goto :goto_8

    .line 1443
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    aput v6, v25, v3

    goto :goto_8

    .line 1446
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    aput v7, v25, v3

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    add-int/lit8 v26, v3, 0x1

    aput v6, v25, v26

    .line 1448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmToOffset:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_8

    .line 1452
    :cond_12
    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 1453
    .local v15, on:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 1454
    .local v17, seq:Lcom/itextpdf/text/pdf/IntHashtable;
    if-nez v17, :cond_13

    .line 1455
    new-instance v17, Lcom/itextpdf/text/pdf/IntHashtable;

    .end local v17           #seq:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-direct/range {v17 .. v17}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 1456
    .restart local v17       #seq:Lcom/itextpdf/text/pdf/IntHashtable;
    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->objStmMark:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1460
    :cond_13
    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_8

    .line 1419
    .end local v3           #base:I
    .end local v6           #field2:I
    .end local v7           #field3:I
    .end local v15           #on:Ljava/lang/Integer;
    .end local v17           #seq:Lcom/itextpdf/text/pdf/IntHashtable;
    .end local v22           #type:I
    :cond_14
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_3

    .line 1468
    .end local v11           #length:I
    .end local v19           #start:I
    :cond_15
    mul-int/lit8 v21, v21, 0x2

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v21

    .line 1472
    :cond_16
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 1473
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1474
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->readXRefStream(I)Z

    move-result v25

    goto/16 :goto_0

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected readXref()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1260
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    .line 1261
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    .line 1262
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStartxref()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1263
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1264
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "startxref"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    new-instance v3, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "startxref.not.found"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1266
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1267
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v3, v4, :cond_1

    .line 1268
    new-instance v3, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v4, "startxref.is.not.followed.by.a.number"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1269
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v1

    .line 1270
    .local v1, startxref:I
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXref:I

    .line 1271
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->eofPos:I

    .line 1273
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->readXRefStream(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1274
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_2
    return-void

    .line 1278
    :catch_0
    move-exception v3

    .line 1279
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    .line 1280
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1281
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1282
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1284
    .local v2, trailer2:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 1285
    .local v0, prev:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v0, :cond_2

    .line 1287
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1288
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 1289
    goto :goto_0
.end method

.method protected readXrefSection()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 1293
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1294
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "xref"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1295
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v13, "xref.subsection.not.found"

    invoke-static {v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1296
    :cond_0
    const/4 v8, 0x0

    .line 1297
    .local v8, start:I
    const/4 v2, 0x0

    .line 1298
    .local v2, end:I
    const/4 v7, 0x0

    .line 1299
    .local v7, pos:I
    const/4 v3, 0x0

    .line 1301
    .local v3, gen:I
    :cond_1
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1302
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "trailer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1346
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1347
    .local v9, trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 1348
    .local v10, xrefSize:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {p0, v12}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    .line 1349
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->XREFSTM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    .line 1350
    .local v11, xrs:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1351
    check-cast v11, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v11           #xrs:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v5

    .line 1353
    .local v5, loc:I
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfReader;->readXRefStream(I)Z

    .line 1354
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    .line 1355
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v5           #loc:I
    :cond_2
    return-object v9

    .line 1304
    .end local v9           #trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v10           #xrefSize:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_3
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v12, v13, :cond_4

    .line 1305
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v13, "object.number.of.the.first.object.in.this.xref.subsection.not.found"

    invoke-static {v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1306
    :cond_4
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v8

    .line 1307
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1308
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v12, v13, :cond_5

    .line 1309
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v13, "number.of.entries.in.this.xref.subsection.not.found"

    invoke-static {v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 1310
    :cond_5
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v12

    add-int v2, v12, v8

    .line 1311
    if-ne v8, v14, :cond_7

    .line 1312
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v0

    .line 1313
    .local v0, back:I
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1314
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    .line 1315
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1316
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v3

    .line 1317
    if-nez v7, :cond_6

    const v12, 0xffff

    if-ne v3, v12, :cond_6

    .line 1318
    add-int/lit8 v8, v8, -0x1

    .line 1319
    add-int/lit8 v2, v2, -0x1

    .line 1321
    :cond_6
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1323
    .end local v0           #back:I
    :cond_7
    mul-int/lit8 v12, v2, 0x2

    invoke-direct {p0, v12}, Lcom/itextpdf/text/pdf/PdfReader;->ensureXrefSize(I)V

    .line 1324
    move v4, v8

    .local v4, k:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1325
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1326
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v7

    .line 1327
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1328
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v3

    .line 1329
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextValidToken()V

    .line 1330
    mul-int/lit8 v6, v4, 0x2

    .line 1331
    .local v6, p:I
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1332
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    aget v12, v12, v6

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    add-int/lit8 v13, v6, 0x1

    aget v12, v12, v13

    if-nez v12, :cond_8

    .line 1335
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    aput v7, v12, v6

    .line 1324
    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1338
    :cond_9
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "f"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1339
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    aget v12, v12, v6

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    add-int/lit8 v13, v6, 0x1

    aget v12, v12, v13

    if-nez v12, :cond_8

    .line 1340
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    const/4 v13, -0x1

    aput v13, v12, v6

    goto :goto_1

    .line 1343
    :cond_a
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const-string/jumbo v13, "invalid.cross.reference.entry.in.this.xref.subsection"

    invoke-static {v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    goto :goto_1

    .line 1357
    .end local v4           #k:I
    .end local v6           #p:I
    .restart local v5       #loc:I
    .restart local v9       #trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v10       #xrefSize:Lcom/itextpdf/text/pdf/PdfNumber;
    :catch_0
    move-exception v1

    .line 1358
    .local v1, e:Ljava/io/IOException;
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    .line 1359
    throw v1
.end method

.method protected rebuildXref()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1478
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->hybridXref:Z

    .line 1479
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->newXrefType:Z

    .line 1480
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1481
    const/16 v12, 0x400

    new-array v10, v12, [[I

    .line 1482
    .local v10, xr:[[I
    const/4 v9, 0x0

    .line 1483
    .local v9, top:I
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1484
    const/16 v12, 0x40

    new-array v4, v12, [B

    .line 1486
    .local v4, line:[B
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v8

    .line 1487
    .local v8, pos:I
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->readLineSegment([B)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1526
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v12, :cond_7

    .line 1527
    new-instance v12, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v13, "trailer.not.found"

    invoke-static {v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1489
    :cond_1
    const/4 v12, 0x0

    aget-byte v12, v4, v12

    const/16 v13, 0x74

    if-ne v12, v13, :cond_3

    .line 1490
    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "trailer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1492
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    .line 1493
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    .line 1494
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v8

    .line 1496
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1497
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1498
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1502
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v1

    .line 1503
    .local v1, e:Ljava/lang/Exception;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    goto :goto_0

    .line 1500
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    :try_start_1
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v12, v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1506
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    const/4 v12, 0x0

    aget-byte v12, v4, v12

    const/16 v13, 0x30

    if-lt v12, v13, :cond_0

    const/4 v12, 0x0

    aget-byte v12, v4, v12

    const/16 v13, 0x39

    if-gt v12, v13, :cond_0

    .line 1507
    invoke-static {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkObjectStart([B)[I

    move-result-object v7

    .line 1508
    .local v7, obj:[I
    if-eqz v7, :cond_0

    .line 1510
    const/4 v12, 0x0

    aget v6, v7, v12

    .line 1511
    .local v6, num:I
    const/4 v12, 0x1

    aget v2, v7, v12

    .line 1512
    .local v2, gen:I
    array-length v12, v10

    if-lt v6, v12, :cond_4

    .line 1513
    mul-int/lit8 v5, v6, 0x2

    .line 1514
    .local v5, newLength:I
    new-array v11, v5, [[I

    .line 1515
    .local v11, xr2:[[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v12, v11, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1516
    move-object v10, v11

    .line 1518
    .end local v5           #newLength:I
    .end local v11           #xr2:[[I
    :cond_4
    if-lt v6, v9, :cond_5

    .line 1519
    add-int/lit8 v9, v6, 0x1

    .line 1520
    :cond_5
    aget-object v12, v10, v6

    if-eqz v12, :cond_6

    aget-object v12, v10, v6

    const/4 v13, 0x1

    aget v12, v12, v13

    if-lt v2, v12, :cond_0

    .line 1521
    :cond_6
    const/4 v12, 0x0

    aput v8, v7, v12

    .line 1522
    aput-object v7, v10, v6

    goto/16 :goto_0

    .line 1528
    .end local v2           #gen:I
    .end local v6           #num:I
    .end local v7           #obj:[I
    :cond_7
    mul-int/lit8 v12, v9, 0x2

    new-array v12, v12, [I

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    .line 1529
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    if-ge v3, v9, :cond_9

    .line 1530
    aget-object v7, v10, v3

    .line 1531
    .restart local v7       #obj:[I
    if-eqz v7, :cond_8

    .line 1532
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    mul-int/lit8 v13, v3, 0x2

    const/4 v14, 0x0

    aget v14, v7, v14

    aput v14, v12, v13

    .line 1529
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1534
    .end local v7           #obj:[I
    :cond_9
    return-void
.end method

.method public releaseLastXrefPartial()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 935
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    if-eq v0, v3, :cond_0

    .line 936
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 937
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 939
    :cond_0
    return-void
.end method

.method public releasePage(I)V
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 1952
    return-void
.end method

.method public removeAnnotations()V
    .locals 4

    .prologue
    .line 2647
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2648
    const/4 v0, 0x1

    .local v0, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 2649
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2650
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2651
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2648
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2653
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_1

    .line 2655
    .end local v1           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2656
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2657
    return-void
.end method

.method public removeFields()V
    .locals 9

    .prologue
    .line 2618
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2619
    const/4 v4, 0x1

    .local v4, k:I
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v7

    if-gt v4, v7, :cond_5

    .line 2620
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2621
    .local v6, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 2622
    .local v1, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v1, :cond_0

    .line 2623
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 2619
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2626
    :cond_0
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2627
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 2628
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2626
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v5

    .line 2630
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2631
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2632
    add-int/lit8 v3, v2, -0x1

    .end local v2           #j:I
    .local v3, j:I
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_3

    .line 2634
    .end local v0           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2635
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_1

    .line 2637
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    goto :goto_1

    .line 2639
    .end local v1           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #j:I
    .end local v6           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2640
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 2641
    return-void
.end method

.method protected removeUnusedNode(Lcom/itextpdf/text/pdf/PdfObject;[Z)V
    .locals 17
    .parameter "obj"
    .parameter "hits"

    .prologue
    .line 2901
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 2902
    .local v11, state:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2903
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 2904
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 2905
    .local v2, current:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 2907
    const/4 v1, 0x0

    .line 2908
    .local v1, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v3, 0x0

    .line 2909
    .local v3, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v7, 0x0

    .line 2910
    .local v7, keys:[Lcom/itextpdf/text/pdf/PdfName;
    const/4 v9, 0x0

    .line 2911
    .local v9, objs:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2912
    .local v4, idx:I
    instance-of v13, v2, Lcom/itextpdf/text/pdf/PdfObject;

    if-eqz v13, :cond_2

    move-object/from16 p1, v2

    .line 2913
    check-cast p1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 2914
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object/from16 v13, p1

    .line 2922
    check-cast v13, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2948
    .end local v2           #current:Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_6

    .line 2949
    move v5, v4

    .local v5, k:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 2950
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfObject;

    .line 2951
    .local v12, v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v12

    .line 2952
    check-cast v13, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 2953
    .local v8, num:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 2954
    :cond_1
    sget-object v13, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v1, v5, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2949
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5           #k:I
    .end local v8           #num:I
    .end local v12           #v:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v2       #current:Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v3, p1

    .line 2917
    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2918
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v13

    new-array v7, v13, [Lcom/itextpdf/text/pdf/PdfName;

    .line 2919
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    move-object/from16 v10, p1

    .line 2925
    check-cast v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 2926
    .local v10, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 2927
    .restart local v8       #num:I
    aget-boolean v13, p2, v8

    if-nez v13, :cond_0

    .line 2928
    const/4 v13, 0x1

    aput-boolean v13, p2, v8

    .line 2929
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2937
    .end local v8           #num:I
    .end local v10           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2
    check-cast v2, [Ljava/lang/Object;

    .end local v2           #current:Ljava/lang/Object;
    move-object v9, v2

    check-cast v9, [Ljava/lang/Object;

    .line 2938
    const/4 v13, 0x0

    aget-object v13, v9, v13

    instance-of v13, v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    .line 2939
    const/4 v13, 0x0

    aget-object v1, v9, v13

    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 2940
    .restart local v1       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v13, 0x1

    aget-object v13, v9, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_1

    .line 2943
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v9, v13

    check-cast v13, [Lcom/itextpdf/text/pdf/PdfName;

    move-object v7, v13

    check-cast v7, [Lcom/itextpdf/text/pdf/PdfName;

    .line 2944
    const/4 v13, 0x1

    aget-object v3, v9, v13

    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2945
    .restart local v3       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v13, 0x2

    aget-object v13, v9, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_1

    .line 2958
    .restart local v5       #k:I
    .restart local v12       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    if-nez v9, :cond_5

    .line 2959
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v14, 0x1

    new-instance v15, Ljava/lang/Integer;

    add-int/lit8 v16, v5, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2964
    :goto_3
    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2961
    :cond_5
    const/4 v13, 0x1

    new-instance v14, Ljava/lang/Integer;

    add-int/lit8 v15, v5, 0x1

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v9, v13

    .line 2962
    invoke-virtual {v11, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2969
    .end local v5           #k:I
    .end local v12           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    move v5, v4

    .restart local v5       #k:I
    :goto_4
    array-length v13, v7

    if-ge v5, v13, :cond_0

    .line 2970
    aget-object v6, v7, v5

    .line 2971
    .local v6, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    .line 2972
    .restart local v12       #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v12

    .line 2973
    check-cast v13, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 2974
    .restart local v8       #num:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    .line 2975
    :cond_7
    sget-object v13, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v3, v6, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2969
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2979
    .end local v8           #num:I
    :cond_8
    if-nez v9, :cond_9

    .line 2980
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/Integer;

    add-int/lit8 v16, v5, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v13, v14

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    :goto_5
    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2982
    :cond_9
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/Integer;

    add-int/lit8 v15, v5, 0x1

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v9, v13

    .line 2983
    invoke-virtual {v11, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2990
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #idx:I
    .end local v5           #k:I
    .end local v6           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v7           #keys:[Lcom/itextpdf/text/pdf/PdfName;
    .end local v9           #objs:[Ljava/lang/Object;
    .end local v12           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    return-void

    .line 2914
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeUnusedObjects()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2996
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Z

    .line 2997
    .local v0, hits:[Z
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0, v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->removeUnusedNode(Lcom/itextpdf/text/pdf/PdfObject;[Z)V

    .line 2998
    const/4 v2, 0x0

    .line 2999
    .local v2, total:I
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->partial:Z

    if-eqz v3, :cond_1

    .line 3000
    const/4 v1, 0x1

    .local v1, k:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 3001
    aget-boolean v3, v0, v1

    if-nez v3, :cond_0

    .line 3002
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    mul-int/lit8 v4, v1, 0x2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 3003
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 3004
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3005
    add-int/lit8 v2, v2, 0x1

    .line 3000
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3010
    .end local v1           #k:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #k:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 3011
    aget-boolean v3, v0, v1

    if-nez v3, :cond_2

    .line 3012
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3013
    add-int/lit8 v2, v2, 0x1

    .line 3010
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3017
    :cond_3
    return v2
.end method

.method public removeUsageRights()V
    .locals 3

    .prologue
    .line 3524
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 3525
    .local v0, perms:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 3531
    :cond_0
    :goto_0
    return-void

    .line 3527
    :cond_1
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->UR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 3528
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->UR3:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 3529
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3530
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PERMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0
.end method

.method public resetLastXrefPartial()V
    .locals 1

    .prologue
    .line 928
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I

    .line 929
    return-void
.end method

.method public resetReleasePage()V
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 1959
    return-void
.end method

.method public selectPages(Ljava/lang/String;)V
    .locals 1
    .parameter "ranges"

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v0

    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/SequenceList;->expand(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->selectPages(Ljava/util/List;)V

    .line 3090
    return-void
.end method

.method public selectPages(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3099
    .local p1, pagesToKeep:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    #calls: Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->selectPages(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->access$100(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Ljava/util/List;)V

    .line 3100
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->removeUnusedObjects()I

    .line 3101
    return-void
.end method

.method public setAppendable(Z)V
    .locals 2
    .parameter "appendable"

    .prologue
    .line 3148
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->appendable:Z

    .line 3149
    if-eqz p1, :cond_0

    .line 3150
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 3151
    :cond_0
    return-void
.end method

.method public setPageContent(I[B)V
    .locals 1
    .parameter "pageNum"
    .parameter "content"

    .prologue
    .line 2056
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setPageContent(I[BI)V

    .line 2057
    return-void
.end method

.method public setPageContent(I[BI)V
    .locals 5
    .parameter "pageNum"
    .parameter "content"
    .parameter "compressionLevel"

    .prologue
    const/4 v3, -0x1

    .line 2064
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2065
    .local v1, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_0

    .line 2076
    :goto_0
    return-void

    .line 2067
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 2068
    .local v0, contents:Lcom/itextpdf/text/pdf/PdfObject;
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 2069
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2070
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    if-ne v2, v3, :cond_1

    .line 2071
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    .line 2074
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    invoke-direct {v3, p0, v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2075
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfReader;->freeXref:I

    new-instance v4, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v4, p0, p2, p3}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PdfReader;[BI)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTampered(Z)V
    .locals 1
    .parameter "tampered"

    .prologue
    .line 2272
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfReader;->tampered:Z

    .line 2273
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages()V

    .line 2274
    return-void
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 3109
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader;->setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V

    .line 3110
    return-void
.end method

.method setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V
    .locals 1
    .parameter "vp"

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3124
    return-void
.end method

.method public shuffleSubsetNames()I
    .locals 15

    .prologue
    .line 2418
    const/4 v10, 0x0

    .line 2419
    .local v10, total:I
    const/4 v4, 0x1

    .local v4, k:I
    :goto_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 2420
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 2421
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2419
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v7

    .line 2423
    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2424
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2426
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->MMTYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2429
    :cond_2
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v8

    .line 2430
    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itextpdf/text/pdf/BaseFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2433
    .local v6, ns:Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 2434
    .local v5, newName:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2435
    invoke-direct {p0, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2436
    add-int/lit8 v10, v10, 0x1

    .line 2437
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2438
    .local v3, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 2440
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 2442
    .end local v3           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #newName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v6           #ns:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->existsName(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2443
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v8

    .line 2444
    .restart local v8       #s:Ljava/lang/String;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2445
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 2447
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2449
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2450
    .local v1, desc:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getSubsetPrefix(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v9

    .line 2451
    .local v9, sde:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 2453
    invoke-static {}, Lcom/itextpdf/text/pdf/BaseFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v6

    .line 2454
    .restart local v6       #ns:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 2455
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x7

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2456
    :cond_4
    invoke-direct {p0, v4, v2}, Lcom/itextpdf/text/pdf/PdfReader;->setXrefPartialObject(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 2457
    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 2458
    .restart local v5       #newName:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2459
    add-int/lit8 v10, v10, 0x1

    .line 2460
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2461
    .restart local v3       #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 2463
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 2466
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #desc:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #newName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v6           #ns:Ljava/lang/String;
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #sde:Ljava/lang/String;
    :cond_5
    return v10
.end method
