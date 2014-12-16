.class public Lcom/thoughtworks/xstream/converters/basic/LongConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "LongConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "str"

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 27
    .local v4, len:I
    if-nez v4, :cond_0

    .line 28
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string/jumbo v10, "For input string: \"\""

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 30
    :cond_0
    const/16 v9, 0x11

    if-ge v4, v9, :cond_1

    .line 31
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 53
    :goto_0
    return-object v9

    .line 33
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 34
    .local v0, c0:C
    const/16 v9, 0x30

    if-eq v0, v9, :cond_2

    const/16 v9, 0x23

    if-eq v0, v9, :cond_2

    .line 35
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    goto :goto_0

    .line 37
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 40
    .local v1, c1:C
    const/16 v9, 0x23

    if-ne v0, v9, :cond_3

    const/16 v9, 0x11

    if-ne v4, v9, :cond_3

    .line 41
    const/4 v9, 0x1

    const/16 v10, 0x9

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    const/16 v11, 0x20

    shl-long v2, v9, v11

    .line 42
    .local v2, high:J
    const/16 v9, 0x9

    const/16 v10, 0x11

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 52
    .local v5, low:J
    :goto_1
    or-long v7, v2, v5

    .line 53
    .local v7, num:J
    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v7, v8}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 43
    .end local v2           #high:J
    .end local v5           #low:J
    .end local v7           #num:J
    :cond_3
    const/16 v9, 0x78

    if-eq v1, v9, :cond_4

    const/16 v9, 0x58

    if-ne v1, v9, :cond_5

    :cond_4
    const/16 v9, 0x12

    if-ne v4, v9, :cond_5

    .line 44
    const/4 v9, 0x2

    const/16 v10, 0xa

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    const/16 v11, 0x20

    shl-long v2, v9, v11

    .line 45
    .restart local v2       #high:J
    const/16 v9, 0xa

    const/16 v10, 0x12

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .restart local v5       #low:J
    goto :goto_1

    .line 46
    .end local v2           #high:J
    .end local v5           #low:J
    :cond_5
    const/16 v9, 0x17

    if-ne v4, v9, :cond_6

    const/16 v9, 0x31

    if-ne v1, v9, :cond_6

    .line 47
    const/4 v9, 0x1

    const/16 v10, 0xc

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    const/16 v11, 0x21

    shl-long v2, v9, v11

    .line 48
    .restart local v2       #high:J
    const/16 v9, 0xc

    const/16 v10, 0x17

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .restart local v5       #low:J
    goto :goto_1

    .line 50
    .end local v2           #high:J
    .end local v5           #low:J
    :cond_6
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    goto/16 :goto_0
.end method
