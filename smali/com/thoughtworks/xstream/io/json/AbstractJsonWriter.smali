.class public abstract Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.super Lcom/thoughtworks/xstream/io/AbstractWriter;
.source "AbstractJsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;,
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;,
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    }
.end annotation


# static fields
.field public static final DROP_ROOT_MODE:I = 0x1

.field public static final EXPLICIT_MODE:I = 0x4

.field public static final IEEE_754_MODE:I = 0x8

.field private static final NUMBER_TYPES:Ljava/util/Set; = null

.field private static final STATE_END_ATTRIBUTES:I = 0x20

.field private static final STATE_END_ELEMENTS:I = 0x100

.field private static final STATE_END_OBJECT:I = 0x2

.field private static final STATE_NEXT_ATTRIBUTE:I = 0x10

.field private static final STATE_NEXT_ELEMENT:I = 0x80

.field private static final STATE_ROOT:I = 0x1

.field private static final STATE_SET_VALUE:I = 0x200

.field private static final STATE_START_ATTRIBUTES:I = 0x8

.field private static final STATE_START_ELEMENTS:I = 0x40

.field private static final STATE_START_OBJECT:I = 0x4

.field public static final STRICT_MODE:I = 0x2


# instance fields
.field private expectedStates:I

.field private mode:I

.field private stack:Lcom/thoughtworks/xstream/core/util/FastStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 203
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 212
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 213
    return-void
.end method

.method public constructor <init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 5
    .parameter "mode"
    .parameter "nameCoder"

    .prologue
    const/4 v0, 0x4

    .line 233
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 193
    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 234
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_0

    move p1, v0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    .line 235
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .parameter "nameCoder"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 223
    return-void
.end method

.method private handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "requiredState"
    .parameter "elementToAdd"
    .parameter "valueToAdd"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    .line 281
    .local v1, stackElement:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;
    iget v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 282
    new-instance v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    iget v3, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v2, v3, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v2

    .line 284
    :cond_0
    iget v2, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, currentState:I
    iput v0, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    .line 286
    return-void
.end method

.method private handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "currentState"
    .parameter "requiredState"
    .parameter "elementToAdd"
    .parameter "valueToAdd"

    .prologue
    .line 290
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v6

    .line 291
    .local v6, size:I
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    .line 292
    .local v0, currentType:Ljava/lang/Class;
    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 293
    .local v1, isArray:Z
    :goto_0
    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    iget-object v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    add-int/lit8 v8, v6, -0x2

    invoke-virtual {v7, v8}, Lcom/thoughtworks/xstream/core/util/FastStack;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v7, v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 294
    .local v2, isArrayElement:Z
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 574
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 292
    .end local v1           #isArray:Z
    .end local v2           #isArrayElement:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 293
    .restart local v1       #isArray:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 296
    .restart local v2       #isArrayElement:Z
    :sswitch_0
    const/4 v7, 0x4

    if-ne p2, v7, :cond_3

    .line 297
    const/16 v7, 0x40

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, p3, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 568
    .end local p2
    :cond_2
    :goto_2
    return p2

    .line 300
    .restart local p2
    :cond_3
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 303
    :sswitch_1
    sparse-switch p2, :sswitch_data_1

    .line 317
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 305
    :sswitch_2
    const/16 v7, 0x80

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 306
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, p3, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 307
    goto :goto_2

    .line 309
    :sswitch_3
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    goto :goto_2

    .line 312
    :sswitch_4
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    :cond_4
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto :goto_2

    .line 321
    :sswitch_5
    sparse-switch p2, :sswitch_data_2

    .line 360
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 326
    :sswitch_6
    if-eqz v2, :cond_5

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_6

    .line 327
    :cond_5
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 328
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 330
    :cond_6
    const/16 p1, 0x40

    .line 332
    sparse-switch p2, :sswitch_data_3

    goto :goto_2

    .line 341
    :sswitch_7
    const/16 v7, 0x200

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 342
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, v7, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 334
    :sswitch_8
    const/16 v7, 0x200

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, v8, p4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 335
    goto :goto_2

    .line 337
    :sswitch_9
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, p3, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 338
    goto :goto_2

    .line 347
    :sswitch_a
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    .line 352
    :sswitch_b
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_7

    if-nez v1, :cond_8

    .line 353
    :cond_7
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 354
    const/16 v7, 0x10

    invoke-direct {p0, p1, v7, p3, p4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 355
    goto/16 :goto_2

    .line 357
    :cond_8
    const/4 p2, 0x4

    goto/16 :goto_2

    .line 364
    :sswitch_c
    sparse-switch p2, :sswitch_data_4

    .line 393
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 366
    :sswitch_d
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 367
    if-nez v2, :cond_9

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_9

    .line 368
    invoke-virtual {p0, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 369
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    .line 376
    :sswitch_e
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 377
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 378
    goto/16 :goto_2

    .line 381
    :sswitch_f
    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 382
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 383
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    .line 388
    :sswitch_10
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto/16 :goto_2

    .line 397
    :cond_9
    :sswitch_11
    sparse-switch p2, :sswitch_data_5

    .line 453
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 399
    :sswitch_12
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    if-le v6, v7, :cond_e

    .line 400
    :cond_a
    if-eqz v2, :cond_b

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_d

    .line 401
    :cond_b
    const-string/jumbo v7, ""

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 402
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 404
    :cond_c
    invoke-virtual {p0, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 406
    :cond_d
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_e

    .line 407
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    .line 410
    :cond_e
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    .line 411
    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    .line 417
    :sswitch_13
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_f

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 418
    new-instance v7, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string/jumbo v8, "Single value cannot be root element"

    invoke-direct {v7, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 420
    :cond_f
    if-nez p4, :cond_11

    .line 421
    const-class v7, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne v0, v7, :cond_10

    .line 422
    const-string/jumbo v7, "null"

    sget-object v8, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, v7, v8}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    .line 423
    :cond_10
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 425
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    .line 428
    :cond_11
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_15

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v7, :cond_12

    const-class v7, Ljava/lang/Long;

    if-ne v0, v7, :cond_15

    .line 430
    :cond_12
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 432
    .local v3, longValue:J
    const-wide/high16 v7, 0x20

    cmp-long v7, v3, v7

    if-gtz v7, :cond_13

    const-wide/high16 v7, -0x20

    cmp-long v7, v3, v7

    if-gez v7, :cond_14

    .line 433
    :cond_13
    sget-object v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, p4, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    .line 435
    :cond_14
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v7

    invoke-virtual {p0, p4, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    .line 438
    .end local v3           #longValue:J
    :cond_15
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v7

    invoke-virtual {p0, p4, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    .line 444
    :sswitch_14
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    .line 445
    if-eqz v1, :cond_16

    .line 446
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto/16 :goto_2

    .line 448
    :cond_16
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    .line 457
    :sswitch_15
    packed-switch p2, :pswitch_data_0

    .line 466
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 459
    :pswitch_0
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 461
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 462
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    .line 470
    :sswitch_16
    packed-switch p2, :pswitch_data_1

    .line 482
    :sswitch_17
    sparse-switch p2, :sswitch_data_6

    .line 534
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 472
    :pswitch_1
    if-eqz p3, :cond_2

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_17

    const-string/jumbo v7, "@"

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    .line 475
    invoke-virtual {p0, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 476
    sget-object v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, p4, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    .line 473
    .end local v5           #name:Ljava/lang/String;
    :cond_17
    const-string/jumbo v7, ""

    goto :goto_3

    .line 484
    :sswitch_18
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 485
    const/16 v7, 0x10

    if-ne p1, v7, :cond_18

    .line 486
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    .line 488
    :cond_18
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    .line 489
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 490
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    .line 494
    :sswitch_19
    if-eqz v1, :cond_19

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 495
    :cond_19
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    .line 496
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1a

    const-string/jumbo v7, "@"

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    .restart local v5       #name:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 498
    sget-object v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, p4, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    .line 496
    .end local v5           #name:Ljava/lang/String;
    :cond_1a
    const-string/jumbo v7, ""

    goto :goto_4

    .line 503
    :sswitch_1a
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 504
    const/16 v7, 0x40

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 505
    sparse-switch p2, :sswitch_data_7

    goto/16 :goto_2

    .line 519
    :sswitch_1b
    const/16 v7, 0x200

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 520
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_2

    .line 507
    :sswitch_1c
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1b

    .line 508
    const-string/jumbo v7, "$"

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    .line 510
    :cond_1b
    const/16 v7, 0x200

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, v8, p4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 511
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    .line 516
    :sswitch_1d
    const/4 v8, 0x4

    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1c

    const-string/jumbo v7, ""

    :goto_5
    invoke-direct {p0, p1, v8, p3, v7}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 517
    goto/16 :goto_2

    .line 516
    :cond_1c
    const/4 v7, 0x0

    goto :goto_5

    .line 525
    :sswitch_1e
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 526
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 527
    goto/16 :goto_2

    .line 529
    :sswitch_1f
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 530
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 531
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 532
    goto/16 :goto_2

    .line 538
    :sswitch_20
    sparse-switch p2, :sswitch_data_8

    .line 549
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 540
    :sswitch_21
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    goto/16 :goto_2

    .line 545
    :sswitch_22
    const/16 v7, 0x40

    const/16 v8, 0x100

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 546
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 547
    goto/16 :goto_2

    .line 554
    :sswitch_23
    sparse-switch p2, :sswitch_data_9

    .line 570
    new-instance v7, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v7, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v7

    .line 556
    :sswitch_24
    iget v7, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_2

    if-eqz v1, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto/16 :goto_2

    .line 561
    :sswitch_25
    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 562
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 563
    goto/16 :goto_2

    .line 565
    :sswitch_26
    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 566
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 567
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 568
    goto/16 :goto_2

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_16
        0x10 -> :sswitch_17
        0x20 -> :sswitch_20
        0x40 -> :sswitch_11
        0x80 -> :sswitch_c
        0x100 -> :sswitch_15
        0x200 -> :sswitch_23
    .end sparse-switch

    .line 303
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch

    .line 321
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_6
        0x8 -> :sswitch_a
        0x10 -> :sswitch_b
        0x80 -> :sswitch_6
        0x200 -> :sswitch_6
    .end sparse-switch

    .line 332
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_7
        0x4 -> :sswitch_9
        0x80 -> :sswitch_7
        0x200 -> :sswitch_8
    .end sparse-switch

    .line 364
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_f
        0x4 -> :sswitch_d
        0x80 -> :sswitch_f
        0x100 -> :sswitch_10
    .end sparse-switch

    .line 397
    :sswitch_data_5
    .sparse-switch
        0x4 -> :sswitch_12
        0x80 -> :sswitch_14
        0x100 -> :sswitch_14
        0x200 -> :sswitch_13
    .end sparse-switch

    .line 457
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch

    .line 482
    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_1f
        0x4 -> :sswitch_1a
        0x10 -> :sswitch_19
        0x20 -> :sswitch_18
        0x80 -> :sswitch_1e
        0x200 -> :sswitch_1a
    .end sparse-switch

    .line 505
    :sswitch_data_7
    .sparse-switch
        0x2 -> :sswitch_1b
        0x4 -> :sswitch_1d
        0x200 -> :sswitch_1c
    .end sparse-switch

    .line 538
    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_22
        0x40 -> :sswitch_21
    .end sparse-switch

    .line 554
    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_26
        0x80 -> :sswitch_25
        0x100 -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 253
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v0, 0x295

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 255
    return-void
.end method

.method protected abstract addLabel(Ljava/lang/String;)V
.end method

.method protected abstract addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V
.end method

.method protected abstract endArray()V
.end method

.method public endNode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 267
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    .line 268
    .local v1, size:I
    if-le v1, v3, :cond_1

    const/16 v0, 0x80

    .line 269
    .local v0, nextState:I
    :goto_0
    invoke-direct {p0, v0, v4, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    .line 271
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iput v0, v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    .line 272
    const/4 v2, 0x4

    iput v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 273
    if-le v1, v3, :cond_0

    .line 274
    iget v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    or-int/lit16 v2, v2, 0x81

    iput v2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 276
    :cond_0
    return-void

    .line 268
    .end local v0           #nextState:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract endObject()V
.end method

.method protected getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    .locals 1
    .parameter "clazz"

    .prologue
    .line 585
    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->BOOLEAN:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NUMBER:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_0
.end method

.method protected isArray(Ljava/lang/Class;)Z
    .locals 1
    .parameter "clazz"

    .prologue
    .line 602
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/io/Externalizable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract nextElement()V
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    .line 259
    .local v0, type:Ljava/lang/Class;
    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string/jumbo p1, "\u0000"

    .line 262
    :cond_1
    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    const/16 v1, 0x81

    iput v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 264
    return-void
.end method

.method protected abstract startArray()V
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 250
    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .parameter "name"
    .parameter "clazz"

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v2, p2, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    const/16 v0, 0x295

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    .line 246
    return-void
.end method

.method protected abstract startObject()V
.end method
