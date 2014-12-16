.class public Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;
.super Ljava/lang/Object;
.source "MeasureConversionBean.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field public static ImperialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;",
            ">;"
        }
    .end annotation
.end field

.field public static MetricMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    .line 74
    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertImperialToMetric(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V
    .locals 7
    .parameter "bean"

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->getMetricMap()Ljava/util/HashMap;

    move-result-object v0

    .line 28
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, tempUnit:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionUnit(Ljava/lang/String;I)V

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->toValue(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionValue(Ljava/lang/String;I)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionUnit(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static convertMetricToImperial(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V
    .locals 7
    .parameter "bean"

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->getImperialMap()Ljava/util/HashMap;

    move-result-object v0

    .line 47
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, tempUnit:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionUnit(Ljava/lang/String;I)V

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->toValue(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionValue(Ljava/lang/String;I)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionUnit(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setConversionValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getImperialMap()Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v14, 0x3f5a36e2eb1c432dL

    const-wide v12, 0x3f0f75104d551d69L

    const-wide v10, 0x3ff17f62b6ae7d56L

    const-wide v8, 0x3fe3e28240b78034L

    const-wide v6, 0x3fa212d77318fc50L

    .line 166
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    .line 168
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u514b"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u78c5"

    const-wide v4, 0x4001a3d70a3d70a4L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kg"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "lb"

    const-wide v4, 0x4001a3d70a3d70a4L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u514b"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u76ce\u53f8"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "g"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "lb"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6beb\u514b"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u514b\u62c9"

    const-wide v4, 0x3f747ae147ae147bL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mg"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "ct"

    const-wide v4, 0x3f747ae147ae147bL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u82f1\u91cc"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mile"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7801"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "yd"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5206\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u82f1\u5c3a"

    const-wide v4, 0x3fd4fdf3b645a1cbL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "ft"

    const-wide v4, 0x3fd4fdf3b645a1cbL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5398\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u540b"

    const-wide v4, 0x3fd932617c1bda51L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cm"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "inch"

    const-wide v4, 0x3fd932617c1bda51L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6beb\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u540b"

    const-wide v4, 0x3fa42c3c9eecbfb1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mm"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "inch"

    const-wide v4, 0x3fa42c3c9eecbfb1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u5343\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u91cc"

    const-wide v4, 0x3fd8b5dcc63f1412L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km^2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mi^2"

    const-wide v4, 0x3fd8b5dcc63f1412L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u7801"

    const-wide v4, 0x3ff322d0e5604189L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m^2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "sq yd"

    const-wide v4, 0x3ff322d0e5604189L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u5206\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u5c3a"

    const-wide v4, 0x3fbb8bac710cb296L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm^2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "sq ft"

    const-wide v4, 0x3fbb8bac710cb296L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u5398\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u5bf8"

    const-wide v4, 0x3fc3d70a3d70a3d7L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cm^2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "sq inch"

    const-wide v4, 0x3fc3d70a3d70a3d7L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u6beb\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u5bf8"

    invoke-direct {v2, v3, v14, v15}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mm^2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "sq inch"

    invoke-direct {v2, v3, v14, v15}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u5343\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u91cc"

    const-wide v4, 0x3fceb50b0f27bb30L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mi^3"

    const-wide v4, 0x3fceb50b0f27bb30L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u7801"

    const-wide v4, 0x3ff4ed916872b021L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "yd^3"

    const-wide v4, 0x3ff4ed916872b021L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u5206\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u5c3a"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "ft^3"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u5398\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u5bf8"

    const-wide v4, 0x3faf3b645a1cac08L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cm^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "in^3"

    const-wide v4, 0x3faf3b645a1cac08L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u6beb\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u5bf8"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mm^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "in^3"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5347"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u52a0\u4ed1"

    const-wide v4, 0x3fcc28f5c28f5c29L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "l"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "gal."

    const-wide v4, 0x3fcc28f5c28f5c29L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6beb\u5347"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u6db2\u76ce\u53f8"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ml"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "fl oz"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u7c73\u6bcf\u5c0f\u65f6"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u82f1\u91cc\u6bcf\u5c0f\u65f6"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km/h"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mph"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u7c73/\u79d2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u82f1\u91cc\u6bcf\u79d2"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km/s"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mps"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7c73/\u79d2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7801\u6bcf\u79d2"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m/s"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "ydps"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u725b\u7c73"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u78c5\u82f1\u5c3a"

    const-wide v4, 0x3fe79f559b3d07c8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "nm"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "lb-ft"

    const-wide v4, 0x3fe79f559b3d07c8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u514b\u529b"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u78c5\u529b"

    const-wide v4, 0x3f6205bc01a36e2fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kg.f"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "kip"

    const-wide v4, 0x3f6205bc01a36e2fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u5e15"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u78c5\u6bcf\u5e73\u65b9\u82f1\u5bf8"

    const-wide v4, 0x3fc28f5c28f5c28fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kpa"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "psi"

    const-wide v4, 0x3fc28f5c28f5c28fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6444\u6c0f\u5ea6"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u534e\u6c0f\u5ea6"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "degree C"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "degree F"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00b0C"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u00b0F"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u2103"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u00b0F"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00baC"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u00b0F"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "grados C"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "grados F"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->ImperialMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getMetricMap()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v12, 0x3fe876c8b4395810L

    const-wide v4, 0x3fdd0624dd2f1aa0L

    const-wide v10, 0x3fed42c3c9eecbfbL

    const-wide v8, 0x403c541f212d7732L

    const-wide v6, 0x3ff9bfb15b573eabL

    .line 77
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    .line 79
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u78c5"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u514b"

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lb"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "kg"

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u76ce\u53f8"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u514b"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "oz"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "g"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u514b\u62c9"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u6beb\u514b"

    const-wide/high16 v4, 0x4069

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ct"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mg"

    const-wide/high16 v4, 0x4069

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u91cc"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u7c73"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mile"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "km"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7801"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7c73"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "yd"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "m"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5206\u7c73"

    const-wide v4, 0x400863f141205bc0L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "dm"

    const-wide v4, 0x400863f141205bc0L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u540b"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u6beb\u7c73"

    const-wide v4, 0x403961758e219653L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "inch"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mm"

    const-wide v4, 0x403961758e219653L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u82f1\u91cc"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u5343\u7c73"

    const-wide v4, 0x4004b851eb851eb8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mi^2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "km^2"

    const-wide v4, 0x4004b851eb851eb8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u7801"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u7c73"

    const-wide v4, 0x3feac154c985f06fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq yd"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "m^2"

    const-wide v4, 0x3feac154c985f06fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u5206\u7c73"

    const-wide v4, 0x4022965fd8adab9fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq ft"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "dm^2"

    const-wide v4, 0x4022965fd8adab9fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u82f1\u5bf8"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u6beb\u7c73"

    const-wide v4, 0x40842947ae147ae1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq inch"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mm^2"

    const-wide v4, 0x40842947ae147ae1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u82f1\u91cc"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u5343\u7c73"

    const-wide v4, 0x4010ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mi^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "km^3"

    const-wide v4, 0x4010ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u7801"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u7c73"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "yd^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "m^3"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u5206\u7c73"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "dm^3"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u82f1\u5bf8"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u6beb\u7c73"

    const-wide v4, 0x40d000c28f5c28f6L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "in^3"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mm^3"

    const-wide v4, 0x40d000c28f5c28f6L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u52a0\u4ed1"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5347"

    const-wide v4, 0x40122f34d6a161e5L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "gal."

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "L"

    const-wide v4, 0x40122f34d6a161e5L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6db2\u76ce\u53f8"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u6beb\u5347"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fl oz"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "mL"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u91cc\u6bcf\u5c0f\u65f6"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u7c73\u6bcf\u5c0f\u65f6"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mph"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "km/h"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u91cc\u6bcf\u79d2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u7c73/\u79d2"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mps"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "km/s"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7801\u6bcf\u79d2"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u7c73/\u79d2"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ydps"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "m/s"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u78c5\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u725b\u7c73"

    const-wide v4, 0x3ff5ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lb-ft"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "Nm"

    const-wide v4, 0x3ff5ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u78c5\u529b"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u514b\u529b"

    const-wide v4, 0x407c5970a3d70a3dL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kip"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "kg.f"

    const-wide v4, 0x407c5970a3d70a3dL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u78c5\u6bcf\u5e73\u65b9\u82f1\u5bf8"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u5343\u5e15"

    const-wide v4, 0x401b947ae147ae14L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "psi"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "Kpa"

    const-wide v4, 0x401b947ae147ae14L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u534e\u6c0f\u5ea6"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u6444\u6c0f\u5ea6"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "degree f"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "degree C"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "grados f"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "grados C"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00b0f"

    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;

    const-string/jumbo v3, "\u00b0C"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->MetricMap:Ljava/util/HashMap;

    return-object v0
.end method
