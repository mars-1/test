.class public Lorg/codehaus/jackson/smile/SmileGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "SmileGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;,
        Lorg/codehaus/jackson/smile/SmileGenerator$Feature;
    }
.end annotation


# static fields
.field protected static final MAX_INT_AS_LONG:J = 0x7fffffffL

.field private static final MIN_BUFFER_LENGTH:I = 0x302

.field protected static final MIN_INT_AS_LONG:J = -0x80000000L

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field protected static final TOKEN_BYTE_BIG_DECIMAL:B = 0x2at

.field protected static final TOKEN_BYTE_BIG_INTEGER:B = 0x26t

.field protected static final TOKEN_BYTE_FLOAT_32:B = 0x28t

.field protected static final TOKEN_BYTE_FLOAT_64:B = 0x29t

.field protected static final TOKEN_BYTE_INT_32:B = 0x24t

.field protected static final TOKEN_BYTE_INT_64:B = 0x25t

.field protected static final TOKEN_BYTE_LONG_STRING_ASCII:B = -0x20t

.field protected static final TOKEN_BYTE_LONG_STRING_UNICODE:B = -0x1ct

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bufferRecyclable:Z

.field protected _bytesWritten:I

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected final _out:Ljava/io/OutputStream;

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputTail:I

.field protected _seenNameCount:I

.field protected _seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field protected final _smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _smileFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "ctxt"
    .parameter "jsonFeatures"
    .parameter "smileFeatures"
    .parameter "codec"
    .parameter "out"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p2, p4}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 203
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 287
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 288
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 289
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 290
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 292
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    .line 294
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 295
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    .line 297
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 302
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 303
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 312
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 313
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 314
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 322
    :goto_1
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 306
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 307
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 309
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 318
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 320
    :cond_4
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 6
    .parameter "ctxt"
    .parameter "jsonFeatures"
    .parameter "smileFeatures"
    .parameter "codec"
    .parameter "out"
    .parameter "outputBuffer"
    .parameter "offset"
    .parameter "bufferRecyclable"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 327
    invoke-direct {p0, p2, p4}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 203
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 328
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 329
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 330
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 331
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 332
    iput-boolean p8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 333
    iput p7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 334
    iput-object p6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    .line 336
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 344
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 345
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 354
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 355
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 356
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 364
    :goto_1
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 348
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 349
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 351
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 359
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 360
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 362
    :cond_4
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method private final _addSeenName(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    const/16 v9, 0x400

    .line 2043
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 2044
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ne v7, v9, :cond_1

    .line 2045
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2046
    const/4 v7, 0x0

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 2061
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    and-int v2, v7, v8

    .line 2062
    .local v2, ix:I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    new-instance v8, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v10, v10, v2

    invoke-direct {v8, p1, v9, v10}, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V

    aput-object v8, v7, v2

    .line 2063
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 2064
    return-void

    .line 2048
    .end local v2           #ix:I
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2049
    .local v6, old:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    new-array v7, v9, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2050
    const/16 v4, 0x3ff

    .line 2051
    .local v4, mask:I
    move-object v0, v6

    .local v0, arr$:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 2052
    .local v5, node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v5, :cond_2

    .line 2053
    iget-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/lit16 v2, v7, 0x3ff

    .line 2054
    .restart local v2       #ix:I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v7, v2

    iput-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2055
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aput-object v5, v7, v2

    .line 2052
    iget-object v5, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    goto :goto_1

    .line 2051
    .end local v2           #ix:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final _addSeenStringValue(Ljava/lang/String;)V
    .locals 11
    .parameter "text"

    .prologue
    const/16 v9, 0x400

    .line 2095
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 2096
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ne v7, v9, :cond_1

    .line 2097
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2098
    const/4 v7, 0x0

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    and-int v2, v7, v8

    .line 2114
    .local v2, ix:I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    new-instance v8, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v10, v10, v2

    invoke-direct {v8, p1, v9, v10}, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V

    aput-object v8, v7, v2

    .line 2115
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2116
    return-void

    .line 2100
    .end local v2           #ix:I
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2101
    .local v6, old:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    new-array v7, v9, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2102
    const/16 v4, 0x3ff

    .line 2103
    .local v4, mask:I
    move-object v0, v6

    .local v0, arr$:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 2104
    .local v5, node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v5, :cond_2

    .line 2105
    iget-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/lit16 v2, v7, 0x3ff

    .line 2106
    .restart local v2       #ix:I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v7, v2

    iput-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2107
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aput-object v5, v7, v2

    .line 2104
    iget-object v5, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    goto :goto_1

    .line 2103
    .end local v2           #ix:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _convertSurrogate(II)I
    .locals 3
    .parameter "firstPart"
    .parameter "secondPart"

    .prologue
    const v2, 0xdc00

    .line 1709
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1710
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    :cond_1
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final _ensureRoomForOutput(I)V
    .locals 2
    .parameter "needed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1738
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1739
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1741
    :cond_0
    return-void
.end method

.method private final _findSeenName(Ljava/lang/String;)I
    .locals 7
    .parameter "name"

    .prologue
    const/4 v4, -0x1

    .line 2012
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2013
    .local v0, hash:I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    aget-object v1, v5, v6

    .line 2014
    .local v1, head:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-nez v1, :cond_0

    .line 2037
    :goto_0
    return v4

    .line 2017
    :cond_0
    move-object v2, v1

    .line 2020
    .local v2, node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    iget-object v5, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2021
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-eqz v2, :cond_2

    .line 2024
    iget-object v5, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2025
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2029
    :cond_2
    move-object v2, v1

    .line 2031
    :cond_3
    iget-object v3, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2032
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2033
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2035
    :cond_4
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2036
    if-nez v2, :cond_3

    goto :goto_0
.end method

.method private final _findSeenStringValue(Ljava/lang/String;)I
    .locals 6
    .parameter "text"

    .prologue
    .line 2068
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2069
    .local v0, hash:I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    aget-object v1, v4, v5

    .line 2070
    .local v1, head:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v1, :cond_4

    .line 2071
    move-object v2, v1

    .line 2074
    .local v2, node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_0
    iget-object v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v4, p1, :cond_1

    .line 2075
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    .line 2089
    .end local v2           #node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_0
    return v4

    .line 2077
    .restart local v2       #node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_1
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2078
    if-nez v2, :cond_0

    .line 2080
    move-object v2, v1

    .line 2082
    :cond_2
    iget-object v3, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2083
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2084
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2086
    :cond_3
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2087
    if-nez v2, :cond_2

    .line 2089
    .end local v2           #node:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    .end local v3           #value:Ljava/lang/String;
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private _mediumUTF8Encode([CII)V
    .locals 9
    .parameter "str"
    .parameter "inputPtr"
    .parameter "inputEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7f

    .line 1636
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v5, -0x4

    .local v0, bufferEnd:I
    move v2, p2

    .line 1639
    .end local p2
    .local v2, inputPtr:I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_a

    .line 1643
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lt v5, v0, :cond_1

    .line 1644
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1646
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inputPtr:I
    .restart local p2
    aget-char v1, p1, v2

    .line 1648
    .local v1, c:I
    if-gt v1, v8, :cond_b

    .line 1649
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    .line 1651
    sub-int v3, p3, p2

    .line 1652
    .local v3, maxInCount:I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v4, v0, v5

    .line 1654
    .local v4, maxOutCount:I
    if-le v3, v4, :cond_2

    .line 1655
    move v3, v4

    .line 1657
    :cond_2
    add-int/2addr v3, p2

    move v2, p2

    .line 1660
    .end local p2
    .restart local v2       #inputPtr:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1663
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inputPtr:I
    .restart local p2
    aget-char v1, p1, v2

    .line 1664
    if-le v1, v8, :cond_3

    move v2, p2

    .line 1672
    .end local v3           #maxInCount:I
    .end local v4           #maxOutCount:I
    .end local p2
    .restart local v2       #inputPtr:I
    :goto_2
    const/16 v5, 0x800

    if-ge v1, v5, :cond_4

    .line 1673
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1674
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move p2, v2

    .end local v2           #inputPtr:I
    .restart local p2
    :goto_3
    move v2, p2

    .line 1700
    .end local p2
    .restart local v2       #inputPtr:I
    goto :goto_0

    .line 1667
    .end local v2           #inputPtr:I
    .restart local v3       #maxInCount:I
    .restart local v4       #maxOutCount:I
    .restart local p2
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    move v2, p2

    .end local p2
    .restart local v2       #inputPtr:I
    goto :goto_1

    .line 1677
    .end local v3           #maxInCount:I
    .end local v4           #maxOutCount:I
    :cond_4
    const v5, 0xd800

    if-lt v1, v5, :cond_5

    const v5, 0xdfff

    if-le v1, v5, :cond_6

    .line 1678
    :cond_5
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1679
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1680
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_0

    .line 1684
    :cond_6
    const v5, 0xdbff

    if-le v1, v5, :cond_7

    .line 1685
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1688
    :cond_7
    if-lt v2, p3, :cond_8

    .line 1689
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1691
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2           #inputPtr:I
    .restart local p2
    aget-char v5, p1, v2

    invoke-direct {p0, v1, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1692
    const v5, 0x10ffff

    if-le v1, v5, :cond_9

    .line 1693
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1695
    :cond_9
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1696
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1697
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1698
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_3

    .line 1701
    .end local v1           #c:I
    .end local p2
    .restart local v2       #inputPtr:I
    :cond_a
    return-void

    .end local v2           #inputPtr:I
    .restart local v1       #c:I
    .restart local p2
    :cond_b
    move v2, p2

    .end local p2
    .restart local v2       #inputPtr:I
    goto/16 :goto_2
.end method

.method private final _shortUTF8Encode([CII)I
    .locals 6
    .parameter "str"
    .parameter "i"
    .parameter "end"

    .prologue
    .line 1499
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1500
    .local v3, ptr:I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1502
    .local v2, outBuf:[B
    :goto_0
    aget-char v0, p1, p2

    .line 1503
    .local v0, c:I
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 1504
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode2([CIII)I

    move-result v1

    .line 1510
    :goto_1
    return v1

    .line 1506
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ptr:I
    .local v4, ptr:I
    int-to-byte v5, v0

    aput-byte v5, v2, v3

    .line 1507
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 1508
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1509
    .local v1, codedLen:I
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    move v3, v4

    .line 1510
    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_1

    .end local v1           #codedLen:I
    .end local v3           #ptr:I
    .restart local v4       #ptr:I
    :cond_1
    move v3, v4

    .end local v4           #ptr:I
    .restart local v3       #ptr:I
    goto :goto_0
.end method

.method private final _shortUTF8Encode2([CIII)I
    .locals 6
    .parameter "str"
    .parameter "i"
    .parameter "end"
    .parameter "outputPtr"

    .prologue
    .line 1520
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .local v3, outBuf:[B
    move v4, p4

    .end local p4
    .local v4, outputPtr:I
    move v2, p2

    .line 1521
    .end local p2
    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_7

    .line 1522
    add-int/lit8 p2, v2, 0x1

    .end local v2           #i:I
    .restart local p2
    aget-char v0, p1, v2

    .line 1523
    .local v0, c:I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    .line 1524
    add-int/lit8 p4, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local p4
    int-to-byte v5, v0

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4
    .restart local v4       #outputPtr:I
    move v2, p2

    .line 1525
    .end local p2
    .restart local v2       #i:I
    goto :goto_0

    .line 1528
    .end local v2           #i:I
    .restart local p2
    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 1529
    add-int/lit8 p4, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local p4
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1530
    add-int/lit8 v4, p4, 0x1

    .end local p4
    .restart local v4       #outputPtr:I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    move v2, p2

    .line 1531
    .end local p2
    .restart local v2       #i:I
    goto :goto_0

    .line 1535
    .end local v2           #i:I
    .restart local p2
    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-le v0, v5, :cond_3

    .line 1536
    :cond_2
    add-int/lit8 p4, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local p4
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1537
    add-int/lit8 v4, p4, 0x1

    .end local p4
    .restart local v4       #outputPtr:I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1538
    add-int/lit8 p4, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local p4
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4
    .restart local v4       #outputPtr:I
    move v2, p2

    .line 1539
    .end local p2
    .restart local v2       #i:I
    goto :goto_0

    .line 1542
    .end local v2           #i:I
    .restart local p2
    :cond_3
    const v5, 0xdbff

    if-le v0, v5, :cond_4

    .line 1543
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1546
    :cond_4
    if-lt p2, p3, :cond_5

    .line 1547
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1549
    :cond_5
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #i:I
    aget-char v5, p1, p2

    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v0

    .line 1550
    const v5, 0x10ffff

    if-le v0, v5, :cond_6

    .line 1551
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1553
    :cond_6
    add-int/lit8 p4, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local p4
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1554
    add-int/lit8 v4, p4, 0x1

    .end local p4
    .restart local v4       #outputPtr:I
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1555
    add-int/lit8 p4, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local p4
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1556
    add-int/lit8 v4, p4, 0x1

    .end local p4
    .restart local v4       #outputPtr:I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    goto/16 :goto_0

    .line 1558
    .end local v0           #c:I
    :cond_7
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1559
    .local v1, codedLen:I
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1560
    return v1
.end method

.method private _slowUTF8Encode(Ljava/lang/String;)V
    .locals 11
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7f

    .line 1565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1566
    .local v4, len:I
    const/4 v2, 0x0

    .line 1567
    .local v2, inputPtr:I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v7, -0x4

    .local v0, bufferEnd:I
    move v3, v2

    .line 1570
    .end local v2           #inputPtr:I
    .local v3, inputPtr:I
    :cond_0
    :goto_0
    if-ge v3, v4, :cond_a

    .line 1574
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lt v7, v0, :cond_1

    .line 1575
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1577
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local v2       #inputPtr:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1579
    .local v1, c:I
    if-gt v1, v10, :cond_b

    .line 1580
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 1582
    sub-int v5, v4, v2

    .line 1583
    .local v5, maxInCount:I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v6, v0, v7

    .line 1585
    .local v6, maxOutCount:I
    if-le v5, v6, :cond_2

    .line 1586
    move v5, v6

    .line 1588
    :cond_2
    add-int/2addr v5, v2

    move v3, v2

    .line 1591
    .end local v2           #inputPtr:I
    .restart local v3       #inputPtr:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1594
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local v2       #inputPtr:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1595
    if-le v1, v10, :cond_3

    move v3, v2

    .line 1603
    .end local v2           #inputPtr:I
    .end local v5           #maxInCount:I
    .end local v6           #maxOutCount:I
    .restart local v3       #inputPtr:I
    :goto_2
    const/16 v7, 0x800

    if-ge v1, v7, :cond_4

    .line 1604
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1605
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v2, v3

    .end local v3           #inputPtr:I
    .restart local v2       #inputPtr:I
    :goto_3
    move v3, v2

    .line 1631
    .end local v2           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto :goto_0

    .line 1598
    .end local v3           #inputPtr:I
    .restart local v2       #inputPtr:I
    .restart local v5       #maxInCount:I
    .restart local v6       #maxOutCount:I
    :cond_3
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    move v3, v2

    .end local v2           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto :goto_1

    .line 1608
    .end local v5           #maxInCount:I
    .end local v6           #maxOutCount:I
    :cond_4
    const v7, 0xd800

    if-lt v1, v7, :cond_5

    const v7, 0xdfff

    if-le v1, v7, :cond_6

    .line 1609
    :cond_5
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1610
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1611
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_0

    .line 1615
    :cond_6
    const v7, 0xdbff

    if-le v1, v7, :cond_7

    .line 1616
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1619
    :cond_7
    if-lt v3, v4, :cond_8

    .line 1620
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1622
    :cond_8
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local v2       #inputPtr:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v1, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1623
    const v7, 0x10ffff

    if-le v1, v7, :cond_9

    .line 1624
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1626
    :cond_9
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1627
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1628
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1629
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_3

    .line 1632
    .end local v1           #c:I
    .end local v2           #inputPtr:I
    .restart local v3       #inputPtr:I
    :cond_a
    return-void

    .end local v3           #inputPtr:I
    .restart local v1       #c:I
    .restart local v2       #inputPtr:I
    :cond_b
    move v3, v2

    .end local v2           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto/16 :goto_2
.end method

.method protected static final _smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 391
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 393
    .local v0, br:Lorg/codehaus/jackson/smile/SmileBufferRecycler;,"Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .end local v0           #br:Lorg/codehaus/jackson/smile/SmileBufferRecycler;,"Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    invoke-direct {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;-><init>()V

    .line 395
    .restart local v0       #br:Lorg/codehaus/jackson/smile/SmileBufferRecycler;,"Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 397
    :cond_0
    return-object v0

    .line 391
    .end local v0           #br:Lorg/codehaus/jackson/smile/SmileBufferRecycler;,"Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 1717
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 1718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1720
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 1721
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 1722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final _writeByte(B)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1745
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1746
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1748
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1749
    return-void
.end method

.method private final _writeBytes(BB)V
    .locals 3
    .parameter "b1"
    .parameter "b2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1753
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1754
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1756
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1757
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1758
    return-void
.end method

.method private final _writeBytes(BBB)V
    .locals 3
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1763
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1765
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1766
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1767
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1768
    return-void
.end method

.method private final _writeBytes(BBBB)V
    .locals 3
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1772
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1773
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1775
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1776
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1777
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1778
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1779
    return-void
.end method

.method private final _writeBytes(BBBBB)V
    .locals 3
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"
    .parameter "b5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1783
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1784
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1786
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1787
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1788
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1789
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1790
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1791
    return-void
.end method

.method private final _writeBytes(BBBBBB)V
    .locals 3
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"
    .parameter "b5"
    .parameter "b6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1795
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1796
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1798
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1799
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1800
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1801
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1802
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1803
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p6, v0, v1

    .line 1804
    return-void
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1808
    if-nez p3, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1811
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 1812
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytesLong([BII)V

    goto :goto_0

    .line 1816
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1817
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeBytesLong([BII)V
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1822
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 1823
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1826
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1827
    .local v0, currLen:I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1828
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1829
    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    .line 1835
    return-void

    .line 1832
    :cond_1
    add-int/2addr p2, v0

    .line 1833
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    goto :goto_0
.end method

.method private final _writeFieldName(Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x38

    const/4 v8, -0x4

    const/4 v7, 0x0

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 601
    .local v2, len:I
    if-nez v2, :cond_1

    .line 602
    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_2

    .line 607
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, ix:I
    if-ltz v1, :cond_2

    .line 609
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 613
    .end local v1           #ix:I
    :cond_2
    if-le v2, v9, :cond_3

    .line 614
    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeNonShortFieldName(Ljava/lang/String;I)V

    goto :goto_0

    .line 619
    :cond_3
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v5, v5, 0xc4

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v5, v6, :cond_4

    .line 620
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 623
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v7, v2, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 624
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 625
    .local v3, origOffset:I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 626
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v5, v7, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 630
    .local v0, byteLen:I
    if-ne v0, v2, :cond_6

    .line 631
    const/16 v5, 0x40

    if-gt v0, v5, :cond_5

    .line 632
    add-int/lit8 v5, v0, 0x7f

    int-to-byte v4, v5

    .line 649
    .local v4, typeToken:B
    :goto_1
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v4, v5, v3

    .line 651
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_0

    .line 652
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v4           #typeToken:B
    :cond_5
    const/16 v4, 0x34

    .line 636
    .restart local v4       #typeToken:B
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1

    .line 639
    .end local v4           #typeToken:B
    :cond_6
    if-gt v0, v9, :cond_7

    .line 641
    add-int/lit16 v5, v0, 0xbe

    int-to-byte v4, v5

    .restart local v4       #typeToken:B
    goto :goto_1

    .line 643
    .end local v4           #typeToken:B
    :cond_7
    const/16 v4, 0x34

    .line 645
    .restart local v4       #typeToken:B
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1
.end method

.method private final _writeNonSharedString(Ljava/lang/String;I)V
    .locals 8
    .parameter "text"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x4

    const/16 v6, -0x1c

    const/4 v5, 0x0

    .line 913
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v3, :cond_0

    .line 914
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 915
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 916
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 943
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, p2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 921
    add-int v3, p2, p2

    add-int/2addr v3, p2

    add-int/lit8 v1, v3, 0x2

    .line 923
    .local v1, maxLen:I
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 925
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 926
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 927
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 931
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 932
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 934
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 936
    .local v2, origOffset:I
    const/16 v3, -0x20

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 937
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 939
    .local v0, byteLen:I
    if-le v0, p2, :cond_3

    .line 940
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v6, v3, v2

    .line 942
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v3, v4

    goto :goto_0
.end method

.method private final _writeNonShortFieldName(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 659
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 661
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v1, :cond_2

    .line 662
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 676
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_0

    .line 677
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    .line 679
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 680
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 682
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 683
    return-void

    .line 664
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v3, p2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 666
    add-int v1, p2, p2

    add-int v0, v1, p2

    .line 667
    .local v0, maxLen:I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_4

    .line 668
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 669
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 671
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    goto :goto_0

    .line 673
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    goto :goto_0
.end method

.method private _writePositiveVInt(I)V
    .locals 7
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    .line 1844
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1845
    and-int/lit8 v4, p1, 0x3f

    add-int/lit16 v4, v4, 0x80

    int-to-byte v0, v4

    .line 1846
    .local v0, b0:B
    shr-int/lit8 p1, p1, 0x6

    .line 1847
    if-gt p1, v5, :cond_1

    .line 1848
    if-lez p1, :cond_0

    .line 1849
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1851
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    .line 1877
    :goto_0
    return-void

    .line 1854
    :cond_1
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v1, v4

    .line 1855
    .local v1, b1:B
    shr-int/lit8 p1, p1, 0x7

    .line 1856
    if-gt p1, v5, :cond_2

    .line 1857
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1858
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1859
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1861
    :cond_2
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v2, v4

    .line 1862
    .local v2, b2:B
    shr-int/lit8 p1, p1, 0x7

    .line 1863
    if-gt p1, v5, :cond_3

    .line 1864
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1865
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1866
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1867
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1869
    :cond_3
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v3, v4

    .line 1870
    .local v3, b3:B
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p1, 0x7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1871
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v3, v4, v5

    .line 1872
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1873
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1874
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto/16 :goto_0
.end method

.method private final _writeSharedNameReference(I)V
    .locals 3
    .parameter "ix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 818
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-lt p1, v0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal error: trying to write shared name with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    .line 823
    add-int/lit8 v0, p1, 0x40

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private final _writeSharedStringValueReference(I)V
    .locals 3
    .parameter "ix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 894
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal error: trying to write shared String value with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_0
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    .line 899
    add-int/lit8 v0, p1, 0x1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit16 v0, v0, 0xec

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private _writeSignedVInt(I)V
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1887
    invoke-static {p1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1888
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1997
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v0, :cond_0

    .line 1998
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    .line 1999
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2000
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 2002
    :cond_0
    return-void
.end method

.method protected _notSupported()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .prologue
    .line 2133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method

.method protected _releaseBuffers()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 1966
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1967
    .local v0, buf:[B
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    if-eqz v4, :cond_0

    .line 1968
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1969
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1971
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 1972
    .local v1, cbuf:[C
    if-eqz v1, :cond_1

    .line 1973
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 1974
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v1}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 1980
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1981
    .local v2, nameBuf:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-ne v4, v6, :cond_2

    .line 1982
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1983
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 1987
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1988
    .local v3, valueBuf:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-ne v4, v6, :cond_3

    .line 1989
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1990
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 1993
    :cond_3
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 3
    .parameter "typeMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1426
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v0

    .line 1427
    .local v0, status:I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 1430
    :cond_0
    return-void
.end method

.method protected _write7BitBinaryWithLength([BII)V
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1892
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    move v1, p2

    .line 1894
    .end local p2
    .local v1, offset:I
    :goto_0
    const/4 v2, 0x7

    if-lt p3, v2, :cond_1

    .line 1895
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1896
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1898
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 1899
    .local v0, i:I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1900
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1901
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1902
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1903
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1904
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1905
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1906
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1907
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1908
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1909
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1910
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1911
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x7

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1912
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1913
    add-int/lit8 p3, p3, -0x7

    move v1, p2

    .line 1914
    .end local p2
    .restart local v1       #offset:I
    goto/16 :goto_0

    .line 1916
    .end local v0           #i:I
    :cond_1
    if-lez p3, :cond_8

    .line 1918
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x7

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 1919
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1921
    :cond_2
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v0, p1, v1

    .line 1922
    .restart local v0       #i:I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1923
    const/4 v2, 0x1

    if-le p3, v2, :cond_7

    .line 1924
    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1925
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1926
    const/4 v2, 0x2

    if-le p3, v2, :cond_6

    .line 1927
    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1928
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1929
    const/4 v2, 0x3

    if-le p3, v2, :cond_5

    .line 1930
    and-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1931
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1932
    const/4 v2, 0x4

    if-le p3, v2, :cond_4

    .line 1933
    and-int/lit8 v2, v0, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1934
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1935
    const/4 v2, 0x5

    if-le p3, v2, :cond_3

    .line 1936
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1937
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1938
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .line 1955
    .end local v0           #i:I
    .end local v1           #offset:I
    .restart local p2
    :goto_1
    return-void

    .line 1940
    .restart local v0       #i:I
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1943
    .end local p2
    .restart local v1       #offset:I
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1           #offset:I
    .restart local p2
    goto :goto_1

    .line 1946
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1949
    .end local p2
    .restart local v1       #offset:I
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1           #offset:I
    .restart local p2
    goto :goto_1

    .line 1952
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .end local v0           #i:I
    .end local p2
    .restart local v1       #offset:I
    :cond_8
    move p2, v1

    .end local v1           #offset:I
    .restart local p2
    goto :goto_1
.end method

.method protected final _writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 688
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->charLength()I

    move-result v2

    .line 689
    .local v2, charLen:I
    if-nez v2, :cond_1

    .line 690
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v1

    .line 694
    .local v1, bytes:[B
    array-length v0, v1

    .line 695
    .local v0, byteLen:I
    if-eq v0, v2, :cond_2

    .line 696
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldNameUnicode(Lorg/codehaus/jackson/SerializableString;[B)V

    goto :goto_0

    .line 700
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_3

    .line 701
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v3

    .line 702
    .local v3, ix:I
    if-ltz v3, :cond_3

    .line 703
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 709
    .end local v3           #ix:I
    :cond_3
    const/16 v4, 0x40

    if-gt v0, v4, :cond_5

    .line 711
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 712
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 714
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 715
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v7, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 718
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_0

    .line 719
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_5
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_6

    .line 725
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 727
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v6, 0x34

    aput-byte v6, v4, v5

    .line 729
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v4, v5, :cond_7

    .line 730
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v7, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 747
    :goto_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v6, -0x4

    aput-byte v6, v4, v5

    .line 749
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_0

    .line 750
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 736
    const/16 v4, 0x302

    if-ge v0, v4, :cond_8

    .line 737
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v7, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_1

    .line 741
    :cond_8
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v4, :cond_9

    .line 742
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 744
    :cond_9
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method protected final _writeFieldNameUnicode(Lorg/codehaus/jackson/SerializableString;[B)V
    .locals 6
    .parameter "name"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 758
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_1

    .line 759
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 760
    .local v1, ix:I
    if-ltz v1, :cond_1

    .line 761
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    .line 812
    .end local v1           #ix:I
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    array-length v0, p2

    .line 769
    .local v0, byteLen:I
    const/16 v2, 0x38

    if-gt v0, v2, :cond_3

    .line 770
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 771
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 774
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v0, 0xbe

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 776
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 779
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_0

    .line 780
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 785
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 787
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v4, 0x34

    aput-byte v4, v2, v3

    .line 789
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v2, v3, :cond_5

    .line 790
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 807
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v4, -0x4

    aput-byte v4, v2, v3

    .line 809
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_0

    .line 810
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 796
    const/16 v2, 0x302

    if-ge v0, v2, :cond_6

    .line 797
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_1

    .line 801
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v2, :cond_7

    .line 802
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 804
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2, p2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    iget-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_closed:Z

    .line 1452
    .local v1, wasClosed:Z
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1458
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    if-eqz v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1461
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 1462
    .local v0, ctxt:Lorg/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeEndArray()V

    goto :goto_0

    .line 1464
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1465
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeEndObject()V

    goto :goto_0

    .line 1471
    .end local v0           #ctxt:Lorg/codehaus/jackson/JsonStreamContext;
    :cond_1
    if-nez v1, :cond_2

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1472
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1474
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1476
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1477
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1483
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_releaseBuffers()V

    .line 1484
    return-void

    .line 1480
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public configure(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;Z)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 0
    .parameter "f"
    .parameter "state"

    .prologue
    .line 503
    if-eqz p2, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->enable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;

    .line 508
    :goto_0
    return-object p0

    .line 506
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->disable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 2
    .parameter "f"

    .prologue
    .line 494
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 495
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 2
    .parameter "f"

    .prologue
    .line 489
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 490
    return-object p0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1442
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1445
    :cond_0
    return-void
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 499
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected outputOffset()J
    .locals 2

    .prologue
    .line 2129
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .parameter "pp"

    .prologue
    .line 422
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .locals 0

    .prologue
    .line 413
    return-object p0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 1
    .parameter "b64variant"
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1164
    if-nez p2, :cond_0

    .line 1165
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1178
    :goto_0
    return-void

    .line 1168
    :cond_0
    const-string/jumbo v0, "write Binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1169
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    const/16 v0, -0x18

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1171
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0

    .line 1173
    :cond_1
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1174
    invoke-direct {p0, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1176
    invoke-direct {p0, p2, p3, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1189
    const-string/jumbo v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1195
    :goto_0
    return-void

    .line 1193
    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 0
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 537
    return-void
.end method

.method public final writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 568
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 569
    return-void

    .line 566
    :cond_1
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 590
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_1
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 444
    const-string/jumbo v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 466
    const-string/jumbo v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 469
    return-void
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 455
    const-string/jumbo v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 458
    return-void
.end method

.method public writeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, last:I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 377
    or-int/lit8 v0, v0, 0x1

    .line 379
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 380
    or-int/lit8 v0, v0, 0x2

    .line 382
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 383
    or-int/lit8 v0, v0, 0x4

    .line 385
    :cond_2
    const/16 v1, 0x3a

    const/16 v2, 0x29

    const/16 v3, 0xa

    int-to-byte v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    .line 386
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1200
    const-string/jumbo v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1201
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1202
    return-void
.end method

.method public writeNumber(D)V
    .locals 8
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1325
    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1326
    const-string/jumbo v5, "write number"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1332
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 1333
    .local v1, l:J
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v7, 0x29

    aput-byte v7, v5, v6

    .line 1335
    const/16 v5, 0x23

    ushr-long v5, v1, v5

    long-to-int v0, v5

    .line 1336
    .local v0, hi5:I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x4

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1337
    shr-int/lit8 v0, v0, 0x7

    .line 1338
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1339
    shr-int/lit8 v0, v0, 0x7

    .line 1340
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1341
    shr-int/lit8 v0, v0, 0x7

    .line 1342
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1343
    shr-int/lit8 v0, v0, 0x7

    .line 1344
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 1345
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1348
    const/16 v5, 0x1c

    shr-long v5, v1, v5

    long-to-int v4, v5

    .line 1349
    .local v4, mid:I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v4, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1352
    long-to-int v3, v1

    .line 1353
    .local v3, lo4:I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1354
    shr-int/lit8 v3, v3, 0x7

    .line 1355
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1356
    shr-int/lit8 v3, v3, 0x7

    .line 1357
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1358
    shr-int/lit8 v3, v3, 0x7

    .line 1359
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1360
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1361
    return-void
.end method

.method public writeNumber(F)V
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1367
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1368
    const-string/jumbo v1, "write number"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1375
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1376
    .local v0, i:I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    .line 1377
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1378
    shr-int/lit8 v0, v0, 0x7

    .line 1379
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1380
    shr-int/lit8 v0, v0, 0x7

    .line 1381
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1382
    shr-int/lit8 v0, v0, 0x7

    .line 1383
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1384
    shr-int/lit8 v0, v0, 0x7

    .line 1385
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1386
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1387
    return-void
.end method

.method public writeNumber(I)V
    .locals 13
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x24

    .line 1207
    const-string/jumbo v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1209
    invoke-static {p1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(I)I

    move-result p1

    .line 1211
    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1212
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 1213
    add-int/lit16 v0, p1, 0xc0

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1242
    :goto_0
    return-void

    .line 1217
    :cond_0
    add-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0

    .line 1221
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v5, v0

    .line 1222
    .local v5, b0:B
    ushr-int/lit8 p1, p1, 0x6

    .line 1223
    if-gt p1, v2, :cond_2

    .line 1224
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBB)V

    goto :goto_0

    .line 1227
    :cond_2
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v4, v0

    .line 1228
    .local v4, b1:B
    shr-int/lit8 p1, p1, 0x7

    .line 1229
    if-gt p1, v2, :cond_3

    .line 1230
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v4, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    goto :goto_0

    .line 1233
    :cond_3
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v3, v0

    .line 1234
    .local v3, b2:B
    shr-int/lit8 p1, p1, 0x7

    .line 1235
    if-gt p1, v2, :cond_4

    .line 1236
    int-to-byte v2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1240
    :cond_4
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v9, v0

    .line 1241
    .local v9, b3:B
    shr-int/lit8 v0, p1, 0x7

    int-to-byte v8, v0

    move-object v6, p0

    move v7, v1

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 14
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1248
    const-wide/32 v7, 0x7fffffff

    cmp-long v0, p1, v7

    if-gtz v0, :cond_0

    const-wide/32 v7, -0x80000000

    cmp-long v0, p1, v7

    if-ltz v0, :cond_0

    .line 1249
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNumber(I)V

    .line 1305
    :goto_0
    return-void

    .line 1252
    :cond_0
    const-string/jumbo v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1255
    invoke-static/range {p1 .. p2}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(J)J

    move-result-wide p1

    .line 1257
    long-to-int v13, p1

    .line 1259
    .local v13, i:I
    and-int/lit8 v0, v13, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v6, v0

    .line 1260
    .local v6, b0:B
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v5, v0

    .line 1261
    .local v5, b1:B
    shr-int/lit8 v0, v13, 0xd

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v4, v0

    .line 1262
    .local v4, b2:B
    shr-int/lit8 v0, v13, 0x14

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v3, v0

    .line 1264
    .local v3, b3:B
    const/16 v0, 0x1b

    ushr-long/2addr p1, v0

    .line 1265
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v2, v0

    .line 1268
    .local v2, b4:B
    const/4 v0, 0x7

    shr-long v7, p1, v0

    long-to-int v13, v7

    .line 1269
    if-nez v13, :cond_1

    .line 1270
    const/16 v1, 0x25

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1274
    :cond_1
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_2

    .line 1275
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v1, p0

    .line 1276
    invoke-direct/range {v1 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1279
    :cond_2
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v1, v0

    .line 1280
    .local v1, b5:B
    shr-int/lit8 v13, v13, 0x7

    .line 1281
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_3

    .line 1282
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v0, p0

    .line 1283
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1286
    :cond_3
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v12, v0

    .line 1287
    .local v12, b6:B
    shr-int/lit8 v13, v13, 0x7

    .line 1288
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_4

    .line 1289
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7, v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBB)V

    move-object v0, p0

    .line 1290
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1293
    :cond_4
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v11, v0

    .line 1294
    .local v11, b7:B
    shr-int/lit8 v13, v13, 0x7

    .line 1295
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_5

    .line 1296
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7, v11, v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    move-object v0, p0

    .line 1297
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1300
    :cond_5
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v10, v0

    .line 1301
    .local v10, b8:B
    shr-int/lit8 v13, v13, 0x7

    .line 1303
    const/16 v8, 0x25

    int-to-byte v9, v13

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    move-object v0, p0

    .line 1304
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto/16 :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "encodedValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 5
    .parameter "dec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1392
    if-nez p1, :cond_0

    .line 1393
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1405
    :goto_0
    return-void

    .line 1396
    :cond_0
    const-string/jumbo v3, "write number"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1397
    const/16 v3, 0x2a

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1398
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 1400
    .local v1, scale:I
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSignedVInt(I)V

    .line 1401
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 1402
    .local v2, unscaled:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1404
    .local v0, data:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1310
    if-nez p1, :cond_0

    .line 1311
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1319
    :goto_0
    return-void

    .line 1314
    :cond_0
    const-string/jumbo v1, "write number"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1316
    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1317
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1318
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeRaw(B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 526
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw([CII)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawUTF8String([BII)V
    .locals 6
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x4

    const/16 v4, -0x1c

    .line 1057
    const-string/jumbo v1, "write String value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1059
    if-nez p3, :cond_0

    .line 1060
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1104
    :goto_0
    return-void

    .line 1064
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v1, :cond_1

    .line 1065
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Can not use direct UTF-8 write methods when \'Feature.CHECK_SHARED_STRING_VALUES\' enabled"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1071
    :cond_1
    const/16 v1, 0x41

    if-gt p3, v1, :cond_4

    .line 1073
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_2

    .line 1074
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1079
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 1080
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    .line 1081
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aget-byte v3, p1, p2

    aput-byte v3, v1, v2

    goto :goto_0

    .line 1083
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, p3, 0x7e

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1084
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1085
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0

    .line 1089
    :cond_4
    add-int v1, p3, p3

    add-int/2addr v1, p3

    add-int/lit8 v0, v1, 0x2

    .line 1090
    .local v0, maxLen:I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    .line 1091
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_5

    .line 1092
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1094
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 1095
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1097
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    goto/16 :goto_0

    .line 1099
    :cond_6
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1100
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1101
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1142
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1147
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue([CII)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 548
    const-string/jumbo v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 550
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 574
    const-string/jumbo v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 576
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 838
    if-nez p1, :cond_0

    .line 839
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 888
    :goto_0
    return-void

    .line 842
    :cond_0
    const-string/jumbo v4, "write String value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 844
    .local v2, len:I
    if-nez v2, :cond_1

    .line 845
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 849
    :cond_1
    const/16 v4, 0x41

    if-le v2, v4, :cond_2

    .line 850
    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeNonSharedString(Ljava/lang/String;I)V

    goto :goto_0

    .line 854
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_3

    .line 855
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 856
    .local v1, ix:I
    if-ltz v1, :cond_3

    .line 857
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 864
    .end local v1           #ix:I
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 865
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 868
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v6, v2, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 869
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 870
    .local v3, origOffset:I
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 871
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v4, v6, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 872
    .local v0, byteLen:I
    const/16 v4, 0x40

    if-gt v0, v4, :cond_7

    .line 874
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_5

    .line 875
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    .line 877
    :cond_5
    if-ne v0, v2, :cond_6

    .line 878
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 881
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x7e

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 884
    :cond_7
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    if-ne v0, v2, :cond_8

    const/16 v4, -0x20

    :goto_1
    aput-byte v4, v5, v3

    .line 886
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v6, -0x4

    aput-byte v6, v4, v5

    goto :goto_0

    .line 884
    :cond_8
    const/16 v4, -0x1c

    goto :goto_1
.end method

.method public final writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 10
    .parameter "sstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1007
    const-string/jumbo v6, "write String value"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1009
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1011
    .local v2, len:I
    if-nez v2, :cond_1

    .line 1012
    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    const/16 v6, 0x41

    if-gt v2, v6, :cond_2

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_2

    .line 1017
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 1018
    .local v1, ix:I
    if-ltz v1, :cond_2

    .line 1019
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 1024
    .end local v1           #ix:I
    :cond_2
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v3

    .line 1025
    .local v3, raw:[B
    array-length v0, v3

    .line 1027
    .local v0, byteLen:I
    const/16 v6, 0x40

    if-gt v0, v6, :cond_5

    .line 1029
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v6, v7, :cond_3

    .line 1030
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1033
    :cond_3
    if-ne v0, v2, :cond_4

    add-int/lit8 v5, v0, 0x3f

    .line 1037
    .local v5, typeToken:I
    :goto_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    .line 1038
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v3, v9, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1039
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1041
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_0

    .line 1042
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    .end local v5           #typeToken:I
    :cond_4
    add-int/lit8 v5, v0, 0x7e

    goto :goto_1

    .line 1046
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v5, -0x20

    .line 1047
    .local v5, typeToken:B
    :goto_2
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1048
    array-length v6, v3

    invoke-direct {p0, v3, v9, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1049
    const/4 v6, -0x4

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 1046
    .end local v5           #typeToken:B
    :cond_6
    const/16 v5, -0x1c

    goto :goto_2
.end method

.method public writeString([CII)V
    .locals 9
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x40

    const/16 v6, -0x1c

    const/4 v7, -0x4

    .line 949
    const/16 v4, 0x41

    if-gt p3, v4, :cond_0

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_0

    if-lez p3, :cond_0

    .line 950
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 1001
    :goto_0
    return-void

    .line 953
    :cond_0
    const-string/jumbo v4, "write String value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 954
    if-nez p3, :cond_1

    .line 955
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 958
    :cond_1
    if-gt p3, v8, :cond_5

    .line 960
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_2

    .line 961
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 963
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 964
    .local v2, origOffset:I
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 965
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 967
    .local v0, byteLen:I
    if-gt v0, v8, :cond_4

    .line 968
    if-ne v0, p3, :cond_3

    .line 969
    add-int/lit8 v4, v0, 0x3f

    int-to-byte v3, v4

    .line 979
    .local v3, typeToken:B
    :goto_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v3, v4, v2

    goto :goto_0

    .line 971
    .end local v3           #typeToken:B
    :cond_3
    add-int/lit8 v4, v0, 0x7e

    int-to-byte v3, v4

    .restart local v3       #typeToken:B
    goto :goto_1

    .line 974
    .end local v3           #typeToken:B
    :cond_4
    const/16 v3, -0x1c

    .line 976
    .restart local v3       #typeToken:B
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_1

    .line 982
    .end local v0           #byteLen:I
    .end local v2           #origOffset:I
    .end local v3           #typeToken:B
    :cond_5
    add-int v4, p3, p3

    add-int/2addr v4, p3

    add-int/lit8 v1, v4, 0x2

    .line 983
    .local v1, maxLen:I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v4, v4

    if-gt v1, v4, :cond_8

    .line 984
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_6

    .line 985
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 987
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 988
    .restart local v2       #origOffset:I
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 989
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 991
    .restart local v0       #byteLen:I
    if-ne v0, p3, :cond_7

    .line 992
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    const/16 v5, -0x20

    aput-byte v5, v4, v2

    .line 994
    :cond_7
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_0

    .line 996
    .end local v0           #byteLen:I
    .end local v2           #origOffset:I
    :cond_8
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 997
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 998
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "fieldName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 476
    const-string/jumbo v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final writeUTF8String([BII)V
    .locals 0
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeRawUTF8String([BII)V

    .line 1112
    return-void
.end method
