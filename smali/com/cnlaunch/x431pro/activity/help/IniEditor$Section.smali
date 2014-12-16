.class public Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;
.super Ljava/lang/Object;
.source "IniEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/IniEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# static fields
.field private static final DEFAULT_CASE_SENSITIVITY:Z = false

.field private static final DEFAULT_COMMENT_DELIMS:[C = null

.field private static final DEFAULT_OPTION_DELIMS:[C = null

.field public static final DEFAULT_OPTION_FORMAT:Ljava/lang/String; = "%s %s %s"

.field public static final HEADER_END:C = ']'

.field public static final HEADER_START:C = '['

.field private static final INVALID_NAME_CHARS:[C = null

.field private static final NAME_MAXLENGTH:I = 0x400

.field private static final NEWLINE_CHARS:Ljava/lang/String; = "\n\r"

.field private static final OPTION_DELIMS_WHITESPACE:[C


# instance fields
.field private commentDelims:[C

.field private commentDelimsSorted:[C

.field private isCaseSensitive:Z

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private optionDelims:[C

.field private optionDelimsSorted:[C

.field private optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 625
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 624
    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->DEFAULT_OPTION_DELIMS:[C

    .line 627
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    .line 626
    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->DEFAULT_COMMENT_DELIMS:[C

    .line 629
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    .line 628
    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->OPTION_DELIMS_WHITESPACE:[C

    .line 636
    new-array v0, v1, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->INVALID_NAME_CHARS:[C

    .line 855
    return-void

    .line 625
    :array_0
    .array-data 0x2
        0x3dt 0x0t
        0x3at 0x0t
    .end array-data

    .line 627
    :array_1
    .array-data 0x2
        0x23t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 629
    :array_2
    .array-data 0x2
        0x20t 0x0t
        0x9t 0x0t
    .end array-data

    .line 636
    :array_3
    .array-data 0x2
        0x5bt 0x0t
        0x5dt 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;-><init>(Ljava/lang/String;[C)V

    .line 646
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "isCaseSensitive"

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;-><init>(Ljava/lang/String;[CZ)V

    .line 657
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .parameter "name"
    .parameter "delims"

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;-><init>(Ljava/lang/String;[CZ)V

    .line 670
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CZ)V
    .locals 4
    .parameter "name"
    .parameter "delims"
    .parameter "isCaseSensitive"

    .prologue
    const/4 v3, 0x0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    invoke-static {p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->validName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal section name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->name:Ljava/lang/String;

    .line 687
    iput-boolean p3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->isCaseSensitive:Z

    .line 688
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->options:Ljava/util/Map;

    .line 689
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    .line 690
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->DEFAULT_OPTION_DELIMS:[C

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelims:[C

    .line 691
    if-nez p2, :cond_1

    sget-object p2, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->DEFAULT_COMMENT_DELIMS:[C

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelims:[C

    .line 692
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    const-string/jumbo v1, "%s %s %s"

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    .line 694
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelims:[C

    array-length v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelimsSorted:[C

    .line 695
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelims:[C

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelimsSorted:[C

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelims:[C

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelims:[C

    array-length v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelimsSorted:[C

    .line 697
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelims:[C

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelimsSorted:[C

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelims:[C

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelimsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 699
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelimsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 700
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->header()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOption(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;
    .locals 1
    .parameter "name"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    return-object v0
.end method

.method private header()Ljava/lang/String;
    .locals 2

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->isCaseSensitive:Z

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1005
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validName(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 982
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v1

    .line 985
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->INVALID_NAME_CHARS:[C

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 990
    const/4 v1, 0x1

    goto :goto_0

    .line 986
    :cond_2
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->INVALID_NAME_CHARS:[C

    aget-char v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 985
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addBlankLine()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/IniEditor;->access$0()Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    return-void
.end method

.method public addComment(Ljava/lang/String;)V
    .locals 2
    .parameter "comment"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelims:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->addComment(Ljava/lang/String;C)V

    .line 839
    return-void
.end method

.method public addComment(Ljava/lang/String;C)V
    .locals 4
    .parameter "comment"
    .parameter "delim"

    .prologue
    .line 850
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n\r"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .local v0, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    return-void

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;-><init>(Ljava/lang/String;C)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "option"

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->normOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, normed:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->getOption(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->value()Ljava/lang/String;

    move-result-object v1

    .line 775
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasOption(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->options:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->normOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 12
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 873
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v9

    if-nez v9, :cond_1

    .line 934
    :goto_1
    return-void

    .line 874
    :cond_1
    const/16 v9, 0x400

    invoke-virtual {p1, v9}, Ljava/io/BufferedReader;->mark(I)V

    .line 875
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 878
    .local v6, line:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_2

    .line 879
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    goto :goto_1

    .line 883
    :cond_2
    const/4 v0, -0x1

    .line 885
    .local v0, delimIndex:I
    const-string/jumbo v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 886
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->addBlankLine()V

    goto :goto_0

    .line 889
    :cond_3
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelimsSorted:[C

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_4

    .line 890
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->commentDelimsSorted:[C

    aget-char v10, v10, v0

    invoke-virtual {p0, v9, v10}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->addComment(Ljava/lang/String;C)V

    goto :goto_0

    .line 894
    :cond_4
    const/4 v0, -0x1

    .line 895
    const/4 v1, -0x1

    .line 896
    .local v1, delimNum:I
    const/4 v5, -0x1

    .line 897
    .local v5, lastSpaceIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, l:I
    :goto_2
    if-ge v2, v4, :cond_5

    if-ltz v0, :cond_6

    .line 914
    :cond_5
    if-eqz v0, :cond_0

    .line 918
    if-gez v0, :cond_c

    .line 919
    if-gez v5, :cond_b

    .line 920
    const-string/jumbo v9, ""

    invoke-virtual {p0, v6, v9}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_6
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelimsSorted:[C

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v1

    .line 899
    if-ltz v1, :cond_8

    .line 900
    move v0, v2

    .line 897
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 904
    :cond_8
    sget-object v9, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->OPTION_DELIMS_WHITESPACE:[C

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 903
    invoke-static {v9, v10}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v9

    if-ltz v9, :cond_a

    move v3, v7

    .line 905
    .local v3, isSpace:Z
    :goto_4
    if-nez v3, :cond_9

    if-gez v5, :cond_5

    .line 908
    :cond_9
    if-eqz v3, :cond_7

    .line 909
    move v5, v2

    goto :goto_3

    .end local v3           #isSpace:Z
    :cond_a
    move v3, v8

    .line 903
    goto :goto_4

    .line 923
    :cond_b
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 924
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 923
    invoke-virtual {p0, v9, v10}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 929
    :cond_c
    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 930
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 929
    invoke-virtual {p0, v9, v10, v11}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->set(Ljava/lang/String;Ljava/lang/String;C)V

    goto/16 :goto_0
.end method

.method public optionNames()Ljava/util/List;
    .locals 4
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
    .line 742
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 743
    .local v2, optNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 744
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 750
    return-object v2

    .line 745
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;

    .line 746
    .local v1, line:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;
    instance-of v3, v1, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    if-eqz v3, :cond_0

    .line 747
    check-cast v1, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    .end local v1           #line:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .parameter "option"

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->normOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, normed:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->getOption(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 822
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->options:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const/4 v1, 0x1

    .line 826
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 944
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    invoke-virtual {p1}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 945
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "option"
    .parameter "value"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionDelims:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->set(Ljava/lang/String;Ljava/lang/String;C)V

    .line 788
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 3
    .parameter "option"
    .parameter "value"
    .parameter "delim"

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->normOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, normed:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->getOption(Ljava/lang/String;)Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->set(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void

    .line 806
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;-><init>(Ljava/lang/String;Ljava/lang/String;CLcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;)V

    .line 807
    .local v1, opt:Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->options:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setOptionFormat(Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 732
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->optionFormat:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    .line 733
    return-void
.end method

.method public setOptionFormatString(Ljava/lang/String;)V
    .locals 1
    .parameter "formatString"

    .prologue
    .line 722
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Section;->setOptionFormat(Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;)V

    .line 723
    return-void
.end method
