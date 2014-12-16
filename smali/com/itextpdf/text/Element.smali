.class public interface abstract Lcom/itextpdf/text/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x7

.field public static final ALIGN_BOTTOM:I = 0x6

.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_JUSTIFIED:I = 0x3

.field public static final ALIGN_JUSTIFIED_ALL:I = 0x8

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_MIDDLE:I = 0x5

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x4

.field public static final ALIGN_UNDEFINED:I = -0x1

.field public static final ANCHOR:I = 0x11

.field public static final ANNOTATION:I = 0x1d

.field public static final AUTHOR:I = 0x4

.field public static final CCITTG3_1D:I = 0x101

.field public static final CCITTG3_2D:I = 0x102

.field public static final CCITTG4:I = 0x100

.field public static final CCITT_BLACKIS1:I = 0x1

.field public static final CCITT_ENCODEDBYTEALIGN:I = 0x2

.field public static final CCITT_ENDOFBLOCK:I = 0x8

.field public static final CCITT_ENDOFLINE:I = 0x4

.field public static final CHAPTER:I = 0x10

.field public static final CHUNK:I = 0xa

.field public static final CREATIONDATE:I = 0x6

.field public static final CREATOR:I = 0x7

.field public static final HEADER:I = 0x0

.field public static final IMGRAW:I = 0x22

.field public static final IMGTEMPLATE:I = 0x23

.field public static final JBIG2:I = 0x24

.field public static final JPEG:I = 0x20

.field public static final JPEG2000:I = 0x21

.field public static final KEYWORDS:I = 0x3

.field public static final LIST:I = 0xe

.field public static final LISTITEM:I = 0xf

.field public static final MARKED:I = 0x32

.field public static final MULTI_COLUMN_TEXT:I = 0x28

.field public static final PARAGRAPH:I = 0xc

.field public static final PHRASE:I = 0xb

.field public static final PRODUCER:I = 0x5

.field public static final PTABLE:I = 0x17

.field public static final RECTANGLE:I = 0x1e

.field public static final SECTION:I = 0xd

.field public static final SUBJECT:I = 0x2

.field public static final TITLE:I = 0x1

.field public static final YMARK:I = 0x37


# virtual methods
.method public abstract getChunks()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isContent()Z
.end method

.method public abstract isNestable()Z
.end method

.method public abstract process(Lcom/itextpdf/text/ElementListener;)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract type()I
.end method
