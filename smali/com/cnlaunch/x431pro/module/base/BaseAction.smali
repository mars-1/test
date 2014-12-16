.class public Lcom/cnlaunch/x431pro/module/base/BaseAction;
.super Lcom/cnlaunch/x431pro/module/base/BusinessManager;
.source "BaseAction.java"


# instance fields
.field protected configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

.field protected mContext:Landroid/content/Context;

.field protected params:Lcom/cnlaunch/framework/network/http/RequestParams;

.field protected requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;-><init>(Landroid/content/Context;)V

    .line 37
    const-class v0, Lcom/cnlaunch/x431pro/module/base/BaseAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->tag:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    .line 57
    return-void
.end method

.method private getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 179
    const-string/jumbo v0, ""

    .line 180
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string/jumbo v2, "action="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, urlArray:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 183
    aget-object v0, v1, v3

    .line 186
    .end local v1           #urlArray:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->tag:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getAction: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method public createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;
    .locals 1
    .parameter "soapObject"

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;->createHead(ZLorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public createHead(ZLorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;
    .locals 13
    .parameter "needSign"
    .parameter "soapObject"

    .prologue
    .line 220
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    const-string/jumbo v9, "user_id"

    invoke-virtual {v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, user_id:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    const-string/jumbo v9, "token"

    invoke-virtual {v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, token:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v1, v8, [Lorg/kxml2/kdom/Element;

    .line 226
    .local v1, header:[Lorg/kxml2/kdom/Element;
    const/4 v8, 0x0

    new-instance v9, Lorg/kxml2/kdom/Element;

    invoke-direct {v9}, Lorg/kxml2/kdom/Element;-><init>()V

    const-string/jumbo v10, "http://www.x431.com"

    const-string/jumbo v11, "authenticate"

    invoke-virtual {v9, v10, v11}, Lorg/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v9

    aput-object v9, v1, v8

    .line 227
    new-instance v8, Lorg/kxml2/kdom/Element;

    invoke-direct {v8}, Lorg/kxml2/kdom/Element;-><init>()V

    const-string/jumbo v9, "http://www.x431.com"

    const-string/jumbo v10, "cc"

    invoke-virtual {v8, v9, v10}, Lorg/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    .line 228
    .local v0, ccElt:Lorg/kxml2/kdom/Element;
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v7}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 229
    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v0}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 232
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-object v1

    .line 237
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v4, sign:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 239
    invoke-virtual {p2}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    .line 240
    .local v3, paramsLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 244
    .end local v2           #i:I
    .end local v3           #paramsLength:I
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "sign: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    new-instance v8, Lorg/kxml2/kdom/Element;

    invoke-direct {v8}, Lorg/kxml2/kdom/Element;-><init>()V

    const-string/jumbo v9, "http://www.x431.com"

    const-string/jumbo v10, "sign"

    invoke-virtual {v8, v9, v10}, Lorg/kxml2/kdom/Element;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v5

    .line 249
    .local v5, signElt:Lorg/kxml2/kdom/Element;
    const/4 v8, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    .line 250
    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v5}, Lorg/kxml2/kdom/Element;->addChild(ILjava/lang/Object;)V

    goto :goto_0

    .line 241
    .end local v5           #signElt:Lorg/kxml2/kdom/Element;
    .restart local v2       #i:I
    .restart local v3       #paramsLength:I
    :cond_2
    invoke-virtual {p2, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-direct {v0}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 77
    .local v0, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v1, "app_id"

    const-string/jumbo v2, "2013122400000003"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "logFilePath"

    .prologue
    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "dbh23foup88lo56ad7865log46ke89y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 10
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, urlBuilder:Ljava/lang/StringBuilder;
    new-instance v1, Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-direct {v1}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 96
    .local v1, signParams:Lcom/cnlaunch/framework/network/http/RequestParams;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, user_id:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, token:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    :cond_0
    new-instance v5, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v6, "BaseManager getSignUrl method IllegalArgumentException."

    invoke-direct {v5, v6}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    :cond_1
    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "2013122400000003"

    invoke-virtual {p2, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v5, "action"

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v5, "user_id"

    invoke-virtual {p2, v5, v4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v5, "ver"

    const-string/jumbo v6, "1.0.0"

    invoke-virtual {p2, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, sign:Ljava/lang/String;
    const-string/jumbo v5, "sign"

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5, v4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "2013122400000003"

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v5, "ver"

    const-string/jumbo v6, "1.0.0"

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v5, "app_id"

    invoke-virtual {p2, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->remove(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v5, "action"

    invoke-virtual {p2, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->remove(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v5, "ver"

    invoke-virtual {p2, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->remove(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v5, "user_id"

    invoke-virtual {p2, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->remove(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string/jumbo v5, "Action"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-object p1
.end method

.method protected getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Z)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "params"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, urlBuilder:Ljava/lang/StringBuilder;
    new-instance v1, Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-direct {v1}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 143
    .local v1, signParams:Lcom/cnlaunch/framework/network/http/RequestParams;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, user_id:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, token:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    :cond_0
    new-instance v5, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v6, "BaseManager getSignUrl method IllegalArgumentException."

    invoke-direct {v5, v6}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    :cond_1
    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "2013122400000003"

    invoke-virtual {p2, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v5, "action"

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v5, "user_id"

    invoke-virtual {p2, v5, v4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v5, "ver"

    const-string/jumbo v6, "1.0.0"

    invoke-virtual {p2, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, sign:Ljava/lang/String;
    const-string/jumbo v5, "sign"

    invoke-static {v0}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5, v4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "2013122400000003"

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v5, "ver"

    const-string/jumbo v6, "1.0.0"

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v5, "action"

    invoke-virtual {p2, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->remove(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v5, "ver"

    invoke-virtual {p2, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->remove(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    return-object p1
.end method

.method protected getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;
    .locals 2
    .parameter "methodName"

    .prologue
    .line 197
    new-instance v0, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v1, "http://www.x431.com"

    invoke-direct {v0, v1, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v0, soapObject:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;
    return-object v0
.end method

.method protected getUrlByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->configDB:Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/module/config/ConfigDBManager;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "requestUrl"
    .parameter
    .parameter "logFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u6267\u884c\u4e0a\u4f20\u6587\u4ef6\u4efb\u52a1"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, file:Ljava/io/File;
    new-instance v2, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "attach"

    const-string/jumbo v5, "application/octet-stream"

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v2, formfile:Lcom/cnlaunch/x431pro/module/setting/model/FormFile;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "requestUrl=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {p1, p2, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->post(Ljava/lang/String;Ljava/util/Map;Lcom/cnlaunch/x431pro/module/setting/model/FormFile;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 293
    .end local v1           #file:Ljava/io/File;
    .end local v2           #formfile:Lcom/cnlaunch/x431pro/module/setting/model/FormFile;
    :goto_0
    return-object v3

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BaseAction;->tag:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "\u4e0a\u4f20\u6587\u4ef6\u51fa\u73b0\u5f02\u5e38"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    new-instance v3, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v4, "Upload the log file to server error!"

    invoke-direct {v3, v4}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
