.class public Lcom/cnlaunch/framework/utils/lang/LangManager;
.super Ljava/lang/Object;
.source "LangManager.java"


# static fields
.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/cnlaunch/framework/utils/lang/LangManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/framework/utils/lang/LangManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLangCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "langId"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/LangManager;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "getLangCode langId is not null."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v2

    .line 100
    :cond_0
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangList()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/lang/LangInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    .line 102
    .local v0, bean:Lcom/cnlaunch/framework/utils/lang/LangInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getLangId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLangCode1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "langId"

    .prologue
    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/LangManager;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "getLangCode langId is not null."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    .line 132
    :goto_0
    return-object v2

    .line 122
    :cond_0
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangList()Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/lang/LangInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    .line 124
    .local v0, bean:Lcom/cnlaunch/framework/utils/lang/LangInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getLangId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getCode1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getCode1()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLangId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "langCode"

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/cnlaunch/framework/utils/lang/LangManager;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "getLangId langCode is not null."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const-string/jumbo v2, "1001"

    .line 85
    :goto_0
    return-object v2

    .line 77
    :cond_0
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangList()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/lang/LangInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    const-string/jumbo v2, "1001"

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    .line 79
    .local v0, bean:Lcom/cnlaunch/framework/utils/lang/LangInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getCode1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    :cond_3
    invoke-virtual {v0}, Lcom/cnlaunch/framework/utils/lang/LangInfo;->getLangId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLangList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/utils/lang/LangInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/lang/LangInfo;>;"
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "\u5fb7\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->DE:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "\u65e5\u6587"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->JP:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "\u4fc4\u7f57\u65af"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->RU:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "\u6cd5\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->FR:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "\u897f\u73ed\u7259"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->ES:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "6"

    const-string/jumbo v3, "\u8461\u8404\u7259"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->PT:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->BR:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "\u6ce2\u5170"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->PL:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "8"

    const-string/jumbo v3, "\u571f\u8033\u5176"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->TR:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "9"

    const-string/jumbo v3, "\u8377\u5170\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->NL:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "10"

    const-string/jumbo v3, "\u5e0c\u814a"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->GR:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "11"

    const-string/jumbo v3, "\u5308\u7259\u5229\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->HU:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "12"

    const-string/jumbo v3, "\u963f\u62c9\u4f2f\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->AR:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->EG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "13"

    const-string/jumbo v3, "\u4e39\u9ea6\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->DA:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->DK:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "14"

    const-string/jumbo v3, "\u97e9\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->KO:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->KR:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "\u6ce2\u65af\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->FA:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->IR:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "16"

    const-string/jumbo v3, "\u7f57\u9a6c\u5c3c\u4e9a\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->RO:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "17"

    const-string/jumbo v3, "\u585e\u5c14\u7ef4\u4e9a\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->SR:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->RS:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "18"

    const-string/jumbo v3, "\u82ac\u5170\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->FI:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "19"

    const-string/jumbo v3, "\u745e\u5178\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->SV:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->SE:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "20"

    const-string/jumbo v3, "\u6377\u514b\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->CS:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->CZ:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "221"

    const-string/jumbo v3, "\u9999\u6e2f"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->HK:Ljava/lang/String;

    sget-object v5, Lcom/cnlaunch/framework/utils/lang/Lang;->TW:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "1001"

    const-string/jumbo v3, "\u82f1\u8bed"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->EN:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "1002"

    const-string/jumbo v3, "\u4e2d\u6587"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->CN:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/cnlaunch/framework/utils/lang/LangInfo;

    const-string/jumbo v2, "1003"

    const-string/jumbo v3, "\u610f\u5927\u5229"

    sget-object v4, Lcom/cnlaunch/framework/utils/lang/Lang;->IT:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/framework/utils/lang/LangInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
