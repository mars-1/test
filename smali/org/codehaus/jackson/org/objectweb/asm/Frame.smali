.class final Lorg/codehaus/jackson/org/objectweb/asm/Frame;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# instance fields
.field b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

.field c:[I

.field d:[I

.field private e:[I

.field private f:[I

.field private g:I

.field private h:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xca

    new-array v1, v0, [I

    const-string/jumbo v2, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 3

    iget v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x300

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

    iget v2, v1, Lorg/codehaus/jackson/org/objectweb/asm/Label;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/codehaus/jackson/org/objectweb/asm/Label;->f:I

    neg-int v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(I)I
    .locals 3

    const/high16 v2, 0x200

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_0
    or-int v0, v2, p1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    or-int v0, v2, p1

    aput v0, v1, p1

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I)I
    .locals 7

    const/high16 v2, 0x170

    const v6, 0x7fffff

    const v0, 0x1000006

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->h:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    aget v2, v2, v1

    const/high16 v3, -0x1000

    and-int/2addr v3, v2

    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    and-int/2addr v2, v6

    aget v2, v4, v2

    add-int/2addr v2, v3

    :cond_0
    :goto_2
    if-ne p2, v2, :cond_4

    move p2, v0

    :cond_1
    return p2

    :cond_2
    const/high16 v0, -0x10

    and-int/2addr v0, p2

    const/high16 v1, 0x180

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->E:[Lorg/codehaus/jackson/org/objectweb/asm/Item;

    const v1, 0xfffff

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/codehaus/jackson/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_3
    const/high16 v5, 0x300

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    iget-object v5, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    array-length v5, v5

    and-int/2addr v2, v6

    sub-int v2, v5, v2

    aget v2, v4, v2

    add-int/2addr v2, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    const v1, 0x1000004

    if-eq v0, v1, :cond_0

    const v1, 0x1000003

    if-ne v0, v1, :cond_1

    :cond_0
    const/high16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    :cond_1
    return-void
.end method

.method private static a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[II)Z
    .locals 8

    const/high16 v7, 0xff0

    const/4 v1, 0x0

    const/high16 v6, -0x1000

    const v2, 0x1000005

    const/high16 v5, 0x170

    aget v3, p2, p3

    if-ne v3, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const v0, 0xfffffff

    and-int/2addr v0, p1

    if-ne v0, v2, :cond_d

    if-ne v3, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-nez v3, :cond_2

    aput v0, p2, p3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    and-int v4, v3, v7

    if-eq v4, v5, :cond_3

    and-int v4, v3, v6

    if-eqz v4, :cond_a

    :cond_3
    if-ne v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/high16 v2, -0x10

    and-int/2addr v2, v0

    const/high16 v4, -0x10

    and-int/2addr v4, v3

    if-ne v2, v4, :cond_7

    and-int v2, v3, v7

    if-ne v2, v5, :cond_6

    and-int v2, v0, v6

    or-int/2addr v2, v5

    const v4, 0xfffff

    and-int/2addr v0, v4

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->a(II)I

    move-result v0

    or-int/2addr v0, v2

    :cond_5
    :goto_2
    if-eq v3, v0, :cond_c

    aput v0, p2, p3

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "java/lang/Object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    goto :goto_2

    :cond_7
    and-int v2, v0, v7

    if-eq v2, v5, :cond_8

    and-int/2addr v0, v6

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "java/lang/Object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    goto :goto_2

    :cond_9
    const/high16 v0, 0x100

    goto :goto_2

    :cond_a
    if-ne v3, v2, :cond_b

    and-int v2, v0, v7

    if-eq v2, v5, :cond_5

    and-int v2, v0, v6

    if-nez v2, :cond_5

    const/high16 v0, 0x100

    goto :goto_2

    :cond_b
    const/high16 v0, 0x100

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    move v0, p1

    goto :goto_1
.end method

.method private static b(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)I
    .locals 8

    const v4, 0x1000004

    const v5, 0x1000003

    const v3, 0x1000002

    const v2, 0x1000001

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x28

    if-ne v0, v6, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    move v1, v2

    :goto_2
    :sswitch_1
    return v1

    :sswitch_2
    move v1, v3

    goto :goto_2

    :sswitch_3
    move v1, v4

    goto :goto_2

    :sswitch_4
    move v1, v5

    goto :goto_2

    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x170

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x170

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v3

    :goto_3
    :sswitch_6
    sub-int v0, v1, v0

    shl-int/lit8 v0, v0, 0x1c

    or-int v1, v0, v2

    goto :goto_2

    :sswitch_7
    const v2, 0x1000009

    goto :goto_3

    :sswitch_8
    const v2, 0x100000b

    goto :goto_3

    :sswitch_9
    const v2, 0x100000a

    goto :goto_3

    :sswitch_a
    const v2, 0x100000c

    goto :goto_3

    :sswitch_b
    move v2, v3

    goto :goto_3

    :sswitch_c
    move v2, v4

    goto :goto_3

    :sswitch_d
    move v2, v5

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_4
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_3
        0x4c -> :sswitch_5
        0x53 -> :sswitch_0
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_d
        0x46 -> :sswitch_b
        0x49 -> :sswitch_6
        0x4a -> :sswitch_c
        0x53 -> :sswitch_a
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    if-lt v1, v0, :cond_1

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

    iget v0, v0, Lorg/codehaus/jackson/org/objectweb/asm/Label;->f:I

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

    iget v1, v1, Lorg/codehaus/jackson/org/objectweb/asm/Label;->g:I

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

    iput v0, v1, Lorg/codehaus/jackson/org/objectweb/asm/Label;->g:I

    :cond_2
    return-void
.end method

.method private c(I)V
    .locals 3

    iget v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

    iget v1, v0, Lorg/codehaus/jackson/org/objectweb/asm/Label;->f:I

    iget v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/codehaus/jackson/org/objectweb/asm/Label;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->h:I

    if-lt v1, v0, :cond_1

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->h:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    iget v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->h:I

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method a(IILorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Lorg/codehaus/jackson/org/objectweb/asm/Item;)V
    .locals 5

    const v4, 0x1000001

    const/4 v3, 0x2

    const v1, 0x1000004

    const/4 v0, 0x1

    const/high16 v2, 0x100

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    const v0, 0x1000005

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_5
    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_6
    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_7
    iget v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->b:I

    packed-switch v0, :pswitch_data_1

    const/high16 v0, 0x170

    const-string/jumbo v1, "java/lang/String"

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_a
    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_b
    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_c
    const/high16 v0, 0x170

    const-string/jumbo v1, "java/lang/Class"

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    const/high16 v1, -0x1000

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    if-lez p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const v1, 0x1000003

    if-ne v0, v1, :cond_2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_0

    :cond_2
    const/high16 v1, 0xf00

    and-int/2addr v1, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, p2, -0x1

    const/high16 v2, 0x80

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_0

    :pswitch_14
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    if-lez p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    const v1, 0x1000003

    if-ne v0, v1, :cond_4

    :cond_3
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_0

    :cond_4
    const/high16 v1, 0xf00

    and-int/2addr v1, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, p2, -0x1

    const/high16 v2, 0x80

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_0

    :pswitch_15
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_0

    :pswitch_16
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    goto/16 :goto_0

    :pswitch_19
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v2

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v2

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v2

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v3

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_20
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_21
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_22
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_23
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_24
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_25
    invoke-direct {p0, p2, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(II)V

    goto/16 :goto_0

    :pswitch_26
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_27
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000002

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_28
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    const v0, 0x1000003

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_2a
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c(I)V

    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    goto/16 :goto_0

    :pswitch_30
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_5

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    move-result v0

    const/16 v1, 0xb7

    if-ne p1, v1, :cond_5

    iget-object v1, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d(I)V

    :cond_5
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->i:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Ljava/lang/String;)V

    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->h:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    const/high16 v0, 0x180

    iget-object v1, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p3, v1, p2}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_33
    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    packed-switch p2, :pswitch_data_2

    const v0, 0x11000004

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_34
    const v0, 0x11000009

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_35
    const v0, 0x1100000b

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_36
    const v0, 0x1100000a

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_37
    const v0, 0x1100000c

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_38
    const v0, 0x11000001

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_39
    const v0, 0x11000002

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_3a
    const v0, 0x11000003

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_3b
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/high16 v1, 0x1170

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    :pswitch_3c
    iget-object v0, p4, Lorg/codehaus/jackson/org/objectweb/asm/Item;->g:Ljava/lang/String;

    invoke-direct {p0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a()I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_7

    invoke-direct {p0, p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/high16 v1, 0x170

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_20
        :pswitch_24
        :pswitch_20
        :pswitch_24
        :pswitch_20
        :pswitch_24
        :pswitch_20
        :pswitch_21
        :pswitch_20
        :pswitch_21
        :pswitch_20
        :pswitch_21
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_20
        :pswitch_22
        :pswitch_11
        :pswitch_29
        :pswitch_26
        :pswitch_28
        :pswitch_20
        :pswitch_f
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2a
        :pswitch_20
        :pswitch_20
        :pswitch_2a
        :pswitch_2a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1
        :pswitch_2b
        :pswitch_2b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_1
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_3b
        :pswitch_29
        :pswitch_17
        :pswitch_3c
        :pswitch_29
        :pswitch_17
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_34
        :pswitch_35
        :pswitch_39
        :pswitch_3a
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch
.end method

.method a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[Lorg/codehaus/jackson/org/objectweb/asm/Type;I)V
    .locals 6

    const/high16 v5, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, p4, [I

    iput-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_5

    const/high16 v2, 0x4

    and-int/2addr v2, p2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    const/high16 v3, 0x170

    iget-object v4, p1, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->F:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v2, v1

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lorg/codehaus/jackson/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    add-int/lit8 v2, v0, 0x1

    aput v3, v4, v0

    const v0, 0x1000004

    if-eq v3, v0, :cond_0

    const v0, 0x1000003

    if-ne v3, v0, :cond_4

    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    add-int/lit8 v0, v2, 0x1

    aput v5, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    const v3, 0x1000006

    aput v3, v2, v1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, p4, :cond_3

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    add-int/lit8 v1, v0, 0x1

    aput v5, v2, v0

    move v0, v1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;Lorg/codehaus/jackson/org/objectweb/asm/Frame;I)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    array-length v4, v1

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    array-length v5, v1

    iget-object v1, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    if-nez v1, :cond_0

    new-array v0, v4, [I

    iput-object v0, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_7

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    array-length v0, v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->e:[I

    aget v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    aget v0, v0, v3

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I)I

    move-result v0

    :cond_2
    iget-object v1, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    invoke-static {p1, v0, v1, v3}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[II)Z

    move-result v0

    or-int/2addr v2, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/high16 v1, -0x1000

    and-int/2addr v1, v0

    const/high16 v6, 0xf00

    and-int/2addr v6, v0

    const/high16 v7, 0x100

    if-eq v6, v7, :cond_1

    const/high16 v7, 0x200

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    const v7, 0x7fffff

    and-int/2addr v7, v0

    aget v6, v6, v7

    add-int/2addr v1, v6

    :goto_2
    const/high16 v6, 0x80

    and-int/2addr v0, v6

    if-eqz v0, :cond_14

    const v0, 0x1000004

    if-eq v1, v0, :cond_4

    const v0, 0x1000003

    if-ne v1, v0, :cond_14

    :cond_4
    const/high16 v0, 0x100

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    const v7, 0x7fffff

    and-int/2addr v7, v0

    sub-int v7, v5, v7

    aget v6, v6, v7

    add-int/2addr v1, v6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    aget v0, v0, v3

    goto :goto_1

    :cond_7
    if-lez p3, :cond_b

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_3
    if-ge v1, v4, :cond_8

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    aget v2, v2, v1

    iget-object v3, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    invoke-static {p1, v2, v3, v1}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[II)Z

    move-result v2

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_8
    iget-object v1, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    if-nez v1, :cond_9

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    const/4 v0, 0x1

    :cond_9
    iget-object v1, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    const/4 v2, 0x0

    invoke-static {p1, p3, v1, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[II)Z

    move-result v1

    or-int/2addr v1, v0

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->b:Lorg/codehaus/jackson/org/objectweb/asm/Label;

    iget v1, v1, Lorg/codehaus/jackson/org/objectweb/asm/Label;->f:I

    add-int v4, v0, v1

    iget-object v0, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    if-nez v0, :cond_13

    iget v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    add-int/2addr v0, v4

    new-array v0, v0, [I

    iput-object v0, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_5
    if-ge v2, v4, :cond_d

    iget-object v0, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    aget v0, v0, v2

    iget-object v3, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    if-eqz v3, :cond_c

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I)I

    move-result v0

    :cond_c
    iget-object v3, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    invoke-static {p1, v0, v3, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[II)Z

    move-result v0

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iget v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->g:I

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->f:[I

    aget v2, v2, v0

    const/high16 v3, -0x1000

    and-int/2addr v3, v2

    const/high16 v6, 0xf00

    and-int/2addr v6, v2

    const/high16 v7, 0x100

    if-ne v6, v7, :cond_f

    :goto_7
    iget-object v3, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->i:[I

    if-eqz v3, :cond_e

    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I)I

    move-result v2

    :cond_e
    iget-object v3, p2, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    add-int v6, v4, v0

    invoke-static {p1, v2, v3, v6}, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->a(Lorg/codehaus/jackson/org/objectweb/asm/ClassWriter;I[II)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    const/high16 v7, 0x200

    if-ne v6, v7, :cond_11

    iget-object v6, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->c:[I

    const v7, 0x7fffff

    and-int/2addr v7, v2

    aget v6, v6, v7

    add-int/2addr v3, v6

    :goto_8
    const/high16 v6, 0x80

    and-int/2addr v2, v6

    if-eqz v2, :cond_12

    const v2, 0x1000004

    if-eq v3, v2, :cond_10

    const v2, 0x1000003

    if-ne v3, v2, :cond_12

    :cond_10
    const/high16 v2, 0x100

    goto :goto_7

    :cond_11
    iget-object v6, p0, Lorg/codehaus/jackson/org/objectweb/asm/Frame;->d:[I

    const v7, 0x7fffff

    and-int/2addr v7, v2

    sub-int v7, v5, v7

    aget v6, v6, v7

    add-int/2addr v3, v6

    goto :goto_8

    :cond_12
    move v2, v3

    goto :goto_7

    :cond_13
    move v0, v2

    goto :goto_4

    :cond_14
    move v0, v1

    goto/16 :goto_1
.end method
