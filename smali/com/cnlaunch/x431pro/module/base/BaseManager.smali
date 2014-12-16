.class public abstract Lcom/cnlaunch/x431pro/module/base/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# static fields
.field protected static final BOTH:I = 0x3

.field protected static final JOSN:I = 0x1

.field protected static final XML:I = 0x2


# instance fields
.field protected envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

.field protected httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

.field protected httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

.field protected jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

.field protected mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;

.field protected xmlMapper:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/base/BaseManager;-><init>(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "parseType"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/cnlaunch/x431pro/module/base/BaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->tag:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 85
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getJsonMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 86
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/XmlMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getXmlMapper()Lcom/thoughtworks/xstream/XStream;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    .line 89
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getJsonMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/XmlMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getXmlMapper()Lcom/thoughtworks/xstream/XStream;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public BeanTojson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->beanToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public beanToXml(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 158
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/XmlMananger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->beanToXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const-string/jumbo v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    sget v1, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->timeout:I

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/base/BaseManager;->getHttpTransport(Ljava/lang/String;I)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v0

    return-object v0
.end method

.method public getHttpTransport(Ljava/lang/String;I)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;
    .locals 2
    .parameter "url"
    .parameter "timeout"

    .prologue
    .line 108
    new-instance v0, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    invoke-direct {v0, p1, p2}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 109
    invoke-static {}, Lcom/cnlaunch/framework/utils/NLog;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->debug:Z

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    return-object v0
.end method

.method public getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .locals 4
    .parameter "elements"
    .parameter "requestObj"

    .prologue
    .line 121
    new-instance v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iput-object p1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iput-object p2, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v0, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    iget-object v3, v3, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->requestDump:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    return-object v0
.end method

.method public jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 171
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, obj:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public soapToBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ksoap2/SoapFault;,
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 196
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/base/BaseManager;->soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter
    .parameter "listNodeNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ksoap2/SoapFault;,
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 210
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->tag:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "responseDump: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    iget-object v9, v9, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v5, Lorg/ksoap2/serialization/SoapObject;

    invoke-direct {v5}, Lorg/ksoap2/serialization/SoapObject;-><init>()V

    .line 214
    .local v5, soapObject:Lorg/ksoap2/serialization/SoapObject;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iget-object v1, v6, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerIn:[Lorg/kxml2/kdom/Element;

    .line 215
    .local v1, headerIn:[Lorg/kxml2/kdom/Element;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-lez v6, :cond_1

    .line 216
    aget-object v6, v1, v10

    invoke-virtual {v6, v10}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/kxml2/kdom/Element;

    invoke-virtual {v6, v10}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, code:Ljava/lang/String;
    aget-object v6, v1, v10

    invoke-virtual {v6, v11}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/kxml2/kdom/Element;

    invoke-virtual {v6, v10}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, msg:Ljava/lang/String;
    new-instance v4, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v4}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 220
    .local v4, property:Lorg/ksoap2/serialization/PropertyInfo;
    const-class v6, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v4, v6}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    .line 221
    const-string/jumbo v6, "code"

    invoke-virtual {v4, v6}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v4, v0}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v5, v4}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    .line 225
    new-instance v4, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v4           #property:Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v4}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 226
    .restart local v4       #property:Lorg/ksoap2/serialization/PropertyInfo;
    const-class v6, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-virtual {v4, v6}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v6, "msg"

    invoke-virtual {v4, v6}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4, v3}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v5, v4}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    .line 237
    .end local v0           #code:Ljava/lang/String;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #property:Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/SoapManager;->getInstance()Lcom/cnlaunch/framework/common/parse/SoapManager;

    move-result-object v6

    invoke-virtual {v6, v5, p1, p2}, Lcom/cnlaunch/framework/common/parse/SoapManager;->soapToJson(Lorg/ksoap2/serialization/SoapObject;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, json:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    const/4 v6, 0x0

    .line 242
    :goto_1
    return-object v6

    .line 232
    .end local v2           #json:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 233
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/base/BaseManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #soapObject:Lorg/ksoap2/serialization/SoapObject;
    check-cast v5, Lorg/ksoap2/serialization/SoapObject;

    .restart local v5       #soapObject:Lorg/ksoap2/serialization/SoapObject;
    goto :goto_0

    .line 242
    .restart local v2       #json:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/cnlaunch/x431pro/module/base/BaseManager;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method public xmlToBean(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "xml"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/XmlMananger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlToBean(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "xml"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/XmlMananger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
