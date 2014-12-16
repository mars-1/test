.class public Lcom/itextpdf/text/Jpeg2000;
.super Lcom/itextpdf/text/Image;
.source "Jpeg2000.java"


# static fields
.field public static final JP2_BPCC:I = 0x62706363

.field public static final JP2_COLR:I = 0x636f6c72

.field public static final JP2_DBTL:I = 0x6474626c

.field public static final JP2_FTYP:I = 0x66747970

.field public static final JP2_IHDR:I = 0x69686472

.field public static final JP2_JP:I = 0x6a502020

.field public static final JP2_JP2:I = 0x6a703220

.field public static final JP2_JP2C:I = 0x6a703263

.field public static final JP2_JP2H:I = 0x6a703268

.field public static final JP2_URL:I = 0x75726c20

.field public static final JPIP_JPIP:I = 0x6a706970


# instance fields
.field boxLength:I

.field boxType:I

.field inp:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 95
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg2000;->processParameters()V

    .line 96
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "img"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 108
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg2000;->rawData:[B

    .line 109
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg2000;->originalData:[B

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg2000;->processParameters()V

    .line 111
    return-void
.end method

.method public constructor <init>([BFF)V
    .locals 0
    .parameter "img"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Jpeg2000;-><init>([B)V

    .line 125
    iput p2, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    .line 126
    iput p3, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    .line 127
    return-void
.end method

.method private cio_read(I)I
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, v:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 134
    :cond_0
    return v1
.end method

.method private processParameters()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x6a703268

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 158
    const/16 v5, 0x21

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->type:I

    .line 159
    iput v6, p0, Lcom/itextpdf/text/Jpeg2000;->originalType:I

    .line 160
    iput-object v7, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 163
    :try_start_0
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->rawData:[B

    if-nez v5, :cond_1

    .line 164
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 165
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, errorID:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    .line 172
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_a

    .line 173
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    .line 174
    const v5, 0x6a502020

    iget v6, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v5, v6, :cond_2

    .line 175
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected.jp.marker"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v0           #errorID:Ljava/lang/String;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    if-eqz v6, :cond_0

    .line 226
    :try_start_1
    iget-object v6, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :goto_1
    iput-object v7, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    :cond_0
    throw v5

    .line 168
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/itextpdf/text/Jpeg2000;->rawData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 169
    const-string/jumbo v0, "Byte array"

    .restart local v0       #errorID:Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_2
    const v5, 0xd0a870a

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 178
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "error.with.jp.marker"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 182
    const v5, 0x66747970

    iget v6, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v5, v6, :cond_4

    .line 183
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected.ftyp.marker"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    iget v6, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    add-int/lit8 v6, v6, -0x8

    invoke-static {v5, v6}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 188
    :cond_5
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v8, v5, :cond_7

    .line 189
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    const v6, 0x6a703263

    if-ne v5, v6, :cond_6

    .line 190
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected.jp2h.marker"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    iget v6, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    add-int/lit8 v6, v6, -0x8

    invoke-static {v5, v6}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 193
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 195
    :cond_7
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-ne v8, v5, :cond_5

    .line 196
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 197
    const v5, 0x69686472

    iget v6, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v5, v6, :cond_8

    .line 198
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected.ihdr.marker"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_8
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    .line 201
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->setTop(F)V

    .line 202
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    .line 203
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->setRight(F)V

    .line 204
    const/4 v5, -0x1

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->bpc:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    if-eqz v5, :cond_9

    .line 226
    :try_start_3
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 227
    :goto_3
    iput-object v7, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 230
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->getWidth()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->plainWidth:F

    .line 231
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->getHeight()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->plainHeight:F

    .line 232
    return-void

    .line 206
    :cond_a
    :try_start_4
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    const v6, -0xb000af

    if-ne v5, v6, :cond_b

    .line 207
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 208
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v2

    .line 209
    .local v2, x1:I
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v4

    .line 210
    .local v4, y1:I
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v1

    .line 211
    .local v1, x0:I
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v3

    .line 212
    .local v3, y0:I
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 213
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->colorspace:I

    .line 214
    const/16 v5, 0x8

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->bpc:I

    .line 215
    sub-int v5, v4, v3

    int-to-float v5, v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    .line 216
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->setTop(F)V

    .line 217
    sub-int v5, v2, v1

    int-to-float v5, v5

    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    .line 218
    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->setRight(F)V

    goto :goto_2

    .line 221
    .end local v1           #x0:I
    .end local v2           #x1:I
    .end local v3           #y0:I
    .end local v4           #y1:I
    :cond_b
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "not.a.valid.jpeg2000.file"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    .end local v0           #errorID:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .restart local v0       #errorID:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public jp2_read_boxhdr()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 138
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    .line 139
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    .line 140
    iget v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "cannot.handle.box.sizes.higher.than.2.32"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    .line 145
    iget v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unsupported.box.size.eq.eq.0"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    if-nez v0, :cond_2

    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unsupported.box.size.eq.eq.0"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    return-void
.end method
