.class public Lorg/vudroid/pdfdroid/PDFDemoActivity;
.super Landroid/app/Activity;
.source "PDFDemoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string/jumbo v9, "DroidSansFallback.ttf"

    invoke-static {p0, v9}, Lorg/vudroid/pdfdroid/PDFManager;->initAssetsFontLib(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 39
    .local v2, flag:Z
    if-eqz v2, :cond_1

    .line 41
    invoke-static {p0}, Lorg/vudroid/pdfdroid/PDFManager;->getFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, fontPath:Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/text/Document;

    invoke-direct {v1}, Lcom/itextpdf/text/Document;-><init>()V

    .line 44
    .local v1, document:Lcom/itextpdf/text/Document;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/cnlaunch/X431Pro/manual_cn.pdf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, path:Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->getInstance(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/PdfWriter;

    .line 48
    invoke-virtual {v1}, Lcom/itextpdf/text/Document;->open()V

    .line 50
    const-string/jumbo v9, "Identity-H"

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v7

    .line 51
    .local v7, titleBaseFont:Lcom/itextpdf/text/pdf/BaseFont;
    new-instance v8, Lcom/itextpdf/text/Font;

    const/high16 v9, 0x4190

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FI)V

    .line 54
    .local v8, titleFont:Lcom/itextpdf/text/Font;
    new-instance v9, Lcom/itextpdf/text/Paragraph;

    const-string/jumbo v10, "Hello World"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z

    .line 57
    new-instance v9, Lcom/itextpdf/text/Paragraph;

    const-string/jumbo v10, "\u6211\u662f\u4e2d\u56fd\u4ebasafdasdfasdf"

    invoke-direct {v9, v10, v8}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z

    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/cnlaunch/headimg.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/Image;->getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Image;

    move-result-object v6

    .line 61
    .local v6, png1:Lcom/itextpdf/text/Image;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/Image;->setAlignment(I)V

    .line 62
    const/high16 v9, 0x42c8

    const/high16 v10, 0x42c8

    invoke-virtual {v6, v9, v10}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    .line 63
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/itextpdf/text/Document;->close()V

    .line 76
    .end local v6           #png1:Lcom/itextpdf/text/Image;
    .end local v7           #titleBaseFont:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v8           #titleFont:Lcom/itextpdf/text/Font;
    :cond_0
    :goto_0
    invoke-static {p0, v5}, Lorg/vudroid/pdfdroid/PDFManager;->open(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .end local v1           #document:Lcom/itextpdf/text/Document;
    .end local v3           #fontPath:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    return-void

    .line 65
    .restart local v1       #document:Lcom/itextpdf/text/Document;
    .restart local v3       #fontPath:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/text/DocumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/itextpdf/text/Document;->close()V

    goto :goto_0

    .line 67
    .end local v0           #de:Lcom/itextpdf/text/DocumentException;
    :catch_1
    move-exception v4

    .line 68
    .local v4, ioe:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/itextpdf/text/Document;->close()V

    goto :goto_0

    .line 69
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 70
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v1}, Lcom/itextpdf/text/Document;->close()V

    .line 73
    :cond_2
    throw v9
.end method
