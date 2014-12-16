.class Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;
.super Ljava/lang/Object;
.source "IniEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/IniEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionFormat"
.end annotation


# static fields
.field private static final EXPECTED_TOKENS:I = 0x4


# instance fields
.field private formatTokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "formatString"

    .prologue
    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;->compileFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;->formatTokens:[Ljava/lang/String;

    .line 1108
    return-void
.end method

.method private compileFormat(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "formatString"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 1116
    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v4, v5

    const-string/jumbo v5, ""

    aput-object v5, v4, v7

    .line 1117
    .local v4, tokens:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1118
    .local v3, tokenCount:I
    const/4 v1, 0x0

    .line 1119
    .local v1, seenPercent:Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1120
    .local v2, token:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 1155
    if-eq v3, v7, :cond_5

    .line 1156
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1157
    const-string/jumbo v6, "Illegal option format. Not enough %s placeholders."

    .line 1156
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1121
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1147
    if-eqz v1, :cond_4

    .line 1148
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1149
    const-string/jumbo v6, "Illegal option format. Unknown format specifier."

    .line 1148
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1123
    :sswitch_0
    if-eqz v1, :cond_1

    .line 1124
    const-string/jumbo v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1125
    const/4 v1, 0x0

    .line 1120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v1, 0x1

    .line 1130
    goto :goto_1

    .line 1132
    :sswitch_1
    if-eqz v1, :cond_3

    .line 1133
    if-lt v3, v8, :cond_2

    .line 1134
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1135
    const-string/jumbo v6, "Illegal option format. Too many %s placeholders."

    .line 1134
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1137
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1138
    add-int/lit8 v3, v3, 0x1

    .line 1139
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #token:Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1140
    .restart local v2       #token:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 1141
    goto :goto_1

    .line 1143
    :cond_3
    const-string/jumbo v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1151
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1159
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1160
    return-object v4

    .line 1121
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "separator"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;->formatTokens:[Ljava/lang/String;

    .line 1112
    .local v0, t:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
