.class Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
.super Ljava/lang/Object;
.source "PdfSmartCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSmartCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteStore"
.end annotation


# instance fields
.field private b:[B

.field private hash:I

.field private md5:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PRStream;)V
    .locals 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 197
    .local v0, bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v2, 0x64

    .line 198
    .local v2, level:I
    invoke-direct {p0, p1, v2, v0}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serObject(Lcom/itextpdf/text/pdf/PdfObject;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 199
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->b:[B

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->md5:Ljava/security/MessageDigest;

    .line 201
    return-void

    .line 193
    .end local v0           #bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v2           #level:I
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method private serArray(Lcom/itextpdf/text/pdf/PdfArray;ILcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 2
    .parameter "array"
    .parameter "level"
    .parameter "bb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const-string/jumbo v1, "$A"

    invoke-virtual {p3, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 182
    if-gtz p2, :cond_1

    .line 187
    :cond_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 185
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serObject(Lcom/itextpdf/text/pdf/PdfObject;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private serDic(Lcom/itextpdf/text/pdf/PdfDictionary;ILcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 3
    .parameter "dic"
    .parameter "level"
    .parameter "bb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const-string/jumbo v2, "$D"

    invoke-virtual {p3, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 170
    if-gtz p2, :cond_1

    .line 178
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, keys:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 174
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 175
    aget-object v2, v1, v0

    check-cast v2, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serObject(Lcom/itextpdf/text/pdf/PdfObject;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 176
    aget-object v2, v1, v0

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serObject(Lcom/itextpdf/text/pdf/PdfObject;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private serObject(Lcom/itextpdf/text/pdf/PdfObject;ILcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 2
    .parameter "obj"
    .parameter "level"
    .parameter "bb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    if-gtz p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-nez p1, :cond_2

    .line 140
    const-string/jumbo v0, "$Lnull"

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    const-string/jumbo v0, "$B"

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object v0, p1

    .line 146
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serDic(Lcom/itextpdf/text/pdf/PdfDictionary;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 147
    if-lez p2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 149
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->md5:Ljava/security/MessageDigest;

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serDic(Lcom/itextpdf/text/pdf/PdfDictionary;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 156
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->serArray(Lcom/itextpdf/text/pdf/PdfArray;ILcom/itextpdf/text/pdf/ByteBuffer;)V

    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    const-string/jumbo v0, "$S"

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    const-string/jumbo v0, "$N"

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto/16 :goto_0

    .line 165
    :cond_7
    const-string/jumbo v0, "$L"

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 205
    instance-of v1, p1, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;

    if-nez v1, :cond_1

    .line 209
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 207
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->b:[B

    check-cast p1, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;

    .end local p1
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 214
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->hash:I

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->b:[B

    array-length v1, v2

    .line 216
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->hash:I

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->b:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->hash:I

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v0           #k:I
    .end local v1           #len:I
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;->hash:I

    return v2
.end method
