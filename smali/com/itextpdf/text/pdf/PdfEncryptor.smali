.class public final Lcom/itextpdf/text/pdf/PdfEncryptor;
.super Ljava/lang/Object;
.source "PdfEncryptor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "type"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V

    .line 206
    .local v0, stamper:Lcom/itextpdf/text/pdf/PdfStamper;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption(ILjava/lang/String;Ljava/lang/String;I)V

    .line 207
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamper;->close()V

    .line 208
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;ILjava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "type"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    .local p6, newInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V

    .line 181
    .local v0, stamper:Lcom/itextpdf/text/pdf/PdfStamper;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption(ILjava/lang/String;Ljava/lang/String;I)V

    .line 182
    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/PdfStamper;->setMoreInfo(Ljava/util/HashMap;)V

    .line 183
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamper;->close()V

    .line 184
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "strength"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V

    .line 126
    .local v0, stamper:Lcom/itextpdf/text/pdf/PdfStamper;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamper;->close()V

    .line 128
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;ZLjava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "strength"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p6, newInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V

    .line 152
    .local v0, stamper:Lcom/itextpdf/text/pdf/PdfStamper;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/PdfStamper;->setMoreInfo(Ljava/util/HashMap;)V

    .line 154
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamper;->close()V

    .line 155
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;[B[BIZ)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "strength128Bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V

    .line 78
    .local v0, stamper:Lcom/itextpdf/text/pdf/PdfStamper;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption([B[BIZ)V

    .line 79
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamper;->close()V

    .line 80
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;[B[BIZLjava/util/HashMap;)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "strength128Bits"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "[B[BIZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    .local p6, newInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V

    .line 104
    .local v0, stamper:Lcom/itextpdf/text/pdf/PdfStamper;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption([B[BIZ)V

    .line 105
    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/PdfStamper;->setMoreInfo(Ljava/util/HashMap;)V

    .line 106
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamper;->close()V

    .line 107
    return-void
.end method

.method public static getPermissionsVerbose(I)Ljava/lang/String;
    .locals 3
    .parameter "permissions"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Allowed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, buf:Ljava/lang/StringBuffer;
    and-int/lit16 v1, p0, 0x804

    const/16 v2, 0x804

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, " Printing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_0
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, " Modify contents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_1
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, " Copy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :cond_2
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, " Modify annotations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_3
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, " Fill in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_4
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, " Screen readers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_5
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_6

    const-string/jumbo v1, " Assembly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_6
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    const-string/jumbo v1, " Degraded printing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAssemblyAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 302
    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCopyAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 258
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDegradedPrintingAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 313
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFillInAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 280
    and-int/lit16 v0, p0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModifyAnnotationsAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 269
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModifyContentsAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 247
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrintingAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 236
    and-int/lit16 v0, p0, 0x804

    const/16 v1, 0x804

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenReadersAllowed(I)Z
    .locals 2
    .parameter "permissions"

    .prologue
    .line 291
    and-int/lit16 v0, p0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
