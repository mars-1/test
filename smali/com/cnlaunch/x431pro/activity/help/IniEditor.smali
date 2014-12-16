.class public Lcom/cnlaunch/x431pro/activity/help/IniEditor;
.super Ljava/lang/Object;
.source "IniEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;,
        Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;,
        Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;,
        Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;,
        Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;,
        Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    }
.end annotation


# static fields
.field private static final BLANK_LINE:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;

.field private static DEFAULT_CASE_SENSITIVITY:Z


# instance fields
.field private commentDelims:[C

.field private commonName:Ljava/lang/String;

.field private isCaseSensitive:Z

.field private optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

.field private sectionOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->DEFAULT_CASE_SENSITIVITY:Z

    .line 1014
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$1;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->BLANK_LINE:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;

    .line 1016
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[C)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "commonName"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[C)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "commonName"
    .parameter "isCaseSensitive"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[CZ)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .parameter "commonName"
    .parameter "delims"

    .prologue
    .line 216
    sget-boolean v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->DEFAULT_CASE_SENSITIVITY:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[CZ)V

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CZ)V
    .locals 2
    .parameter "commonName"
    .parameter "delims"
    .parameter "isCaseSensitive"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sections:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sectionOrder:Ljava/util/List;

    .line 232
    iput-boolean p3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->isCaseSensitive:Z

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->addSection(Ljava/lang/String;)Z

    .line 237
    :cond_0
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commentDelims:[C

    .line 238
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    const-string/jumbo v1, "%s %s %s"

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    .line 239
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isCaseSensitive"

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0, v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[CZ)V

    .line 157
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .parameter "delims"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[C)V

    .line 190
    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 1
    .parameter "delims"
    .parameter "isCaseSensitive"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;-><init>(Ljava/lang/String;[CZ)V

    .line 203
    return-void
.end method

.method static synthetic access$0()Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;
    .locals 1

    .prologue
    .line 1014
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->BLANK_LINE:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;

    return-object v0
.end method

.method private getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    .locals 2
    .parameter "name"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sections:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->normSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    return-object v0
.end method

.method private normSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->isCaseSensitive:Z

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBlankLine(Ljava/lang/String;)V
    .locals 1
    .parameter "section"

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->addBlankLine()V

    .line 458
    return-void

    .line 456
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "section"
    .parameter "comment"

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->addComment(Ljava/lang/String;)V

    .line 443
    return-void

    .line 441
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSection(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->normSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, normName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commentDelims:[C

    .line 363
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->isCaseSensitive:Z

    .line 362
    invoke-direct {v1, v0, v2, v3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;-><init>(Ljava/lang/String;[CZ)V

    .line 364
    .local v1, section:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->setOptionFormat(Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;)V

    .line 365
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sections:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sectionOrder:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v2, 0x1

    .line 370
    .end local v1           #section:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "section"
    .parameter "option"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    .line 277
    .local v0, sect:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .end local v0           #sect:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    :goto_0
    return-object v1

    .line 280
    .restart local v0       #sect:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 284
    .end local v0           #sect:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasOption(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "section"
    .parameter "option"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSection(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sections:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->normSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 532
    .local v0, in:Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->load(Ljava/io/InputStream;)V

    .line 533
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 534
    return-void
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->load(Ljava/io/InputStreamReader;)V

    .line 548
    return-void
.end method

.method public load(Ljava/io/InputStreamReader;)V
    .locals 7
    .parameter "streamReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 559
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 560
    .local v0, curSection:Ljava/lang/String;
    const/4 v2, 0x0

    .line 562
    .local v2, line:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-nez v5, :cond_1

    .line 576
    return-void

    .line 563
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2

    .line 565
    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 566
    .local v1, endIndex:I
    if-ltz v1, :cond_2

    .line 567
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->addSection(Ljava/lang/String;)Z

    .line 571
    .end local v1           #endIndex:I
    :cond_2
    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v4

    .line 573
    .local v4, sect:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->load(Ljava/io/BufferedReader;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->load(Ljava/io/File;)V

    .line 520
    return-void
.end method

.method public optionNames(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "section"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionNames()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "section"
    .parameter "option"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 323
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSection(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->normSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, normName:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can\'t remove common section"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sectionOrder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 389
    const/4 v1, 0x1

    .line 392
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 478
    .local v0, out:Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->save(Ljava/io/OutputStream;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 480
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->save(Ljava/io/OutputStreamWriter;)V

    .line 492
    return-void
.end method

.method public save(Ljava/io/OutputStreamWriter;)V
    .locals 4
    .parameter "streamWriter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sectionOrder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 502
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 503
    .local v2, writer:Ljava/io/PrintWriter;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    return-void

    .line 504
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v1

    .line 505
    .local v1, sect:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
    #calls: Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->header()Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->access$0(Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->save(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->save(Ljava/io/File;)V

    .line 468
    return-void
.end method

.method public sectionNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->sectionOrder:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 404
    .local v0, sectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->commonName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 407
    :cond_0
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "section"
    .parameter "option"
    .parameter "value"

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->hasSection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->getSection(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$NoSuchSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptionFormatString(Ljava/lang/String;)V
    .locals 1
    .parameter "formatString"

    .prologue
    .line 260
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    .line 261
    return-void
.end method
