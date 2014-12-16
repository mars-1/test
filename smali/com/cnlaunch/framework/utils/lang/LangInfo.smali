.class public Lcom/cnlaunch/framework/utils/lang/LangInfo;
.super Ljava/lang/Object;
.source "LangInfo.java"


# instance fields
.field private code:Ljava/lang/String;

.field private code1:Ljava/lang/String;

.field private langId:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "langId"
    .parameter "language"
    .parameter "code"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->langId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->language:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "langId"
    .parameter "language"
    .parameter "code"
    .parameter "code1"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->langId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->language:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code1:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCode1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code1:Ljava/lang/String;

    return-object v0
.end method

.method public getLangId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->langId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCode1(Ljava/lang/String;)V
    .locals 0
    .parameter "code1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->code1:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setLangId(Ljava/lang/String;)V
    .locals 0
    .parameter "langId"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->langId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/lang/LangInfo;->language:Ljava/lang/String;

    .line 67
    return-void
.end method
