.class Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;
.super Ljava/lang/Object;
.source "IniEditor.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/IniEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Option"
.end annotation


# static fields
.field private static final ILLEGAL_VALUE_CHARS:Ljava/lang/String; = "\n\r"


# instance fields
.field private format:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

.field private name:Ljava/lang/String;

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;CLcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "separator"
    .parameter "format"

    .prologue
    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1, p3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->validName(Ljava/lang/String;C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal option name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->name:Ljava/lang/String;

    .line 1032
    iput-char p3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->separator:C

    .line 1033
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->format:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    .line 1034
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->set(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method private static validName(Ljava/lang/String;C)Z
    .locals 3
    .parameter "name"
    .parameter "separator"

    .prologue
    const/4 v0, 0x0

    .line 1066
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return v0

    .line 1069
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1072
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->name:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1046
    if-nez p1, :cond_0

    .line 1047
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->value:Ljava/lang/String;

    .line 1059
    :goto_0
    return-void

    .line 1050
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1051
    const-string/jumbo v3, "\n\r"

    .line 1050
    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .local v1, st:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1054
    .local v0, sb:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1057
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->value:Ljava/lang/String;

    goto :goto_0

    .line 1055
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->format:Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->value:Ljava/lang/String;

    iget-char v3, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->separator:C

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$OptionFormat;->format(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Option;->value:Ljava/lang/String;

    return-object v0
.end method
