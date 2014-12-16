.class Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
.super Ljava/lang/Object;
.source "LocationTextExtractionStrategy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextChunk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;",
        ">;"
    }
.end annotation


# instance fields
.field final charSpaceWidth:F

.field final distParallelEnd:F

.field final distParallelStart:F

.field final distPerpendicular:I

.field final endLocation:Lcom/itextpdf/text/pdf/parser/Vector;

.field final orientationMagnitude:I

.field final orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

.field final startLocation:Lcom/itextpdf/text/pdf/parser/Vector;

.field final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;F)V
    .locals 6
    .parameter "string"
    .parameter "startLocation"
    .parameter "endLocation"
    .parameter "charSpaceWidth"

    .prologue
    const/4 v5, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->startLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 188
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->endLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 189
    iput p4, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->charSpaceWidth:F

    .line 191
    invoke-virtual {p3, p2}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/parser/Vector;->normalize()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 192
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    .line 197
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Vector;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v5, v5, v1}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    .line 198
    .local v0, origin:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    .line 200
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/parser/Vector;->dot(Lcom/itextpdf/text/pdf/parser/Vector;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    .line 201
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, p3}, Lcom/itextpdf/text/pdf/parser/Vector;->dot(Lcom/itextpdf/text/pdf/parser/Vector;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelEnd:F

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->printDiagnostics()V

    return-void
.end method

.method private static compareInts(II)I
    .locals 1
    .parameter "int1"
    .parameter "int2"

    .prologue
    .line 263
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private printDiagnostics()V
    .locals 3

    .prologue
    .line 205
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Text (@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->startLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->endLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orientationMagnitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "distPerpendicular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "distParallel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)I
    .locals 3
    .parameter "rhs"

    .prologue
    .line 239
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->compareInts(II)I

    move-result v0

    .line 243
    .local v0, rslt:I
    if-nez v0, :cond_0

    .line 245
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->compareInts(II)I

    move-result v0

    .line 246
    if-nez v0, :cond_0

    .line 251
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v0, -0x1

    .line 253
    :goto_1
    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    check-cast p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->compareTo(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)I

    move-result v0

    return v0
.end method

.method public distanceFromEndOf(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)F
    .locals 3
    .parameter "other"

    .prologue
    .line 230
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelEnd:F

    sub-float v0, v1, v2

    .line 231
    .local v0, distance:F
    return v0
.end method

.method public sameLine(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)Z
    .locals 3
    .parameter "as"

    .prologue
    const/4 v0, 0x0

    .line 216
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    if-eq v1, v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    if-ne v1, v2, :cond_0

    .line 218
    const/4 v0, 0x1

    goto :goto_0
.end method
