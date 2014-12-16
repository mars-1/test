.class public Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;
.super Ljava/lang/Object;
.source "MeasureConversionMap.java"


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
            "Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEEPSIZE:[I

.field public static MetricMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->KEEPSIZE:[I

    .line 118
    sput-object v1, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    .line 119
    sput-object v1, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    return-void

    .line 24
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ParseDoubleValue(Ljava/lang/String;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 111
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 114
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static convertImperialToMetric(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .parameter
    .parameter "pointSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, dataStreamListSrc:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 60
    :cond_1
    return-object v0

    .line 38
    :cond_2
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->copyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, dataStreamList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->getMetricMap()Ljava/util/HashMap;

    move-result-object v2

    .line 40
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, tempUnit:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->toValue(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 40
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static convertMetricToImperial(Ljava/util/List;I)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "pointSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, dataStreamListSrc:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const-wide/high16 v11, 0x4040

    const-wide v9, 0x3ffccccccccccccdL

    .line 70
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 106
    :cond_1
    return-object v0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->copyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, dataStreamList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->getImperialMap()Ljava/util/HashMap;

    move-result-object v2

    .line 79
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, tempUnit:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->toValue(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 79
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_4
    const-string/jumbo v4, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v5, "\u534e\u6c0f\u5ea6"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_5
    const-string/jumbo v4, "degree C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v5, "degree F"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_6
    const-string/jumbo v4, "\u00b0C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v5, "\u00b0F"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 96
    :cond_7
    const-string/jumbo v4, "\u2103"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v5, "\u00b0F"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_8
    const-string/jumbo v4, "\u00baC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v5, "\u00b0F"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getImperialMap()Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v14, 0x3f5a36e2eb1c432dL

    const-wide v12, 0x3f0f75104d551d69L

    const-wide v10, 0x3ff17f62b6ae7d56L

    const-wide v8, 0x3fe3e28240b78034L

    const-wide v6, 0x3fa212d77318fc50L

    .line 210
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    .line 212
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u514b"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u78c5"

    const-wide v4, 0x4001a3d70a3d70a4L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kg"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "lb"

    const-wide v4, 0x4001a3d70a3d70a4L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u514b"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u76ce\u53f8"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "g"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "lb"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6beb\u514b"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u514b\u62c9"

    const-wide v4, 0x3f747ae147ae147bL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mg"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "ct"

    const-wide v4, 0x3f747ae147ae147bL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u82f1\u91cc"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mile"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7801"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "yd"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5206\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u82f1\u5c3a"

    const-wide v4, 0x3fd4fdf3b645a1cbL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "ft"

    const-wide v4, 0x3fd4fdf3b645a1cbL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5398\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u540b"

    const-wide v4, 0x3fd932617c1bda51L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cm"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "inch"

    const-wide v4, 0x3fd932617c1bda51L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6beb\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u540b"

    const-wide v4, 0x3fa42c3c9eecbfb1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mm"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "inch"

    const-wide v4, 0x3fa42c3c9eecbfb1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u5343\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u91cc"

    const-wide v4, 0x3fd8b5dcc63f1412L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km^2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mi^2"

    const-wide v4, 0x3fd8b5dcc63f1412L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u7801"

    const-wide v4, 0x3ff322d0e5604189L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m^2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "sq yd"

    const-wide v4, 0x3ff322d0e5604189L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u5206\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u5c3a"

    const-wide v4, 0x3fbb8bac710cb296L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm^2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "sq ft"

    const-wide v4, 0x3fbb8bac710cb296L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u5398\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u5bf8"

    const-wide v4, 0x3fc3d70a3d70a3d7L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cm^2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "sq inch"

    const-wide v4, 0x3fc3d70a3d70a3d7L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u6beb\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u82f1\u5bf8"

    invoke-direct {v2, v3, v14, v15}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mm^2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "sq inch"

    invoke-direct {v2, v3, v14, v15}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u5343\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u91cc"

    const-wide v4, 0x3fceb50b0f27bb30L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mi^3"

    const-wide v4, 0x3fceb50b0f27bb30L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u7801"

    const-wide v4, 0x3ff4ed916872b021L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "yd^3"

    const-wide v4, 0x3ff4ed916872b021L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u5206\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u5c3a"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "dm^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "ft^3"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u5398\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u5bf8"

    const-wide v4, 0x3faf3b645a1cac08L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cm^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "in^3"

    const-wide v4, 0x3faf3b645a1cac08L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u6beb\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u82f1\u5bf8"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mm^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "in^3"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5347"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u52a0\u4ed1"

    const-wide v4, 0x3fcc28f5c28f5c29L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "l"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "gal."

    const-wide v4, 0x3fcc28f5c28f5c29L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6beb\u5347"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u6db2\u76ce\u53f8"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ml"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "fl oz"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u7c73\u6bcf\u5c0f\u65f6"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u82f1\u91cc\u6bcf\u5c0f\u65f6"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km/h"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mph"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u7c73/\u79d2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u82f1\u91cc\u6bcf\u79d2"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "km/s"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mps"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7c73/\u79d2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7801\u6bcf\u79d2"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "m/s"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "ydps"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u725b\u7c73"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u78c5\u82f1\u5c3a"

    const-wide v4, 0x3fe79f559b3d07c8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "nm"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "lb-ft"

    const-wide v4, 0x3fe79f559b3d07c8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u514b\u529b"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u78c5\u529b"

    const-wide v4, 0x3f6205bc01a36e2fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kg.f"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "kip"

    const-wide v4, 0x3f6205bc01a36e2fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u5e15"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u78c5\u6bcf\u5e73\u65b9\u82f1\u5bf8"

    const-wide v4, 0x3fc28f5c28f5c28fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kpa"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "psi"

    const-wide v4, 0x3fc28f5c28f5c28fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->ImperialMap:Ljava/util/HashMap;

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
            "Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v12, 0x3fe876c8b4395810L

    const-wide v4, 0x3fdd0624dd2f1aa0L

    const-wide v10, 0x3fed42c3c9eecbfbL

    const-wide v8, 0x403c541f212d7732L

    const-wide v6, 0x3ff9bfb15b573eabL

    .line 122
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    .line 124
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u78c5"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u514b"

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lb"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "kg"

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u76ce\u53f8"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u514b"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "oz"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "g"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u514b\u62c9"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u6beb\u514b"

    const-wide/high16 v4, 0x4069

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ct"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mg"

    const-wide/high16 v4, 0x4069

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u91cc"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u7c73"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mile"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "km"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7801"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7c73"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "yd"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "m"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5206\u7c73"

    const-wide v4, 0x400863f141205bc0L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "dm"

    const-wide v4, 0x400863f141205bc0L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u540b"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u6beb\u7c73"

    const-wide v4, 0x403961758e219653L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "inch"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mm"

    const-wide v4, 0x403961758e219653L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u82f1\u91cc"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u5343\u7c73"

    const-wide v4, 0x4004b851eb851eb8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mi^2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "km^2"

    const-wide v4, 0x4004b851eb851eb8L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u7801"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u7c73"

    const-wide v4, 0x3feac154c985f06fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq yd"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "m^2"

    const-wide v4, 0x3feac154c985f06fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u5206\u7c73"

    const-wide v4, 0x4022965fd8adab9fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq ft"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "dm^2"

    const-wide v4, 0x4022965fd8adab9fL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5e73\u65b9\u82f1\u5bf8"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5e73\u65b9\u6beb\u7c73"

    const-wide v4, 0x40842947ae147ae1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sq inch"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mm^2"

    const-wide v4, 0x40842947ae147ae1L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u82f1\u91cc"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u5343\u7c73"

    const-wide v4, 0x4010ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mi^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "km^3"

    const-wide v4, 0x4010ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u7801"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u7c73"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "yd^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "m^3"

    invoke-direct {v2, v3, v12, v13}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u5206\u7c73"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ft^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "dm^3"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7acb\u65b9\u82f1\u5bf8"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7acb\u65b9\u6beb\u7c73"

    const-wide v4, 0x40d000c28f5c28f6L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "in^3"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mm^3"

    const-wide v4, 0x40d000c28f5c28f6L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u52a0\u4ed1"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5347"

    const-wide v4, 0x40122f34d6a161e5L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "gal."

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "L"

    const-wide v4, 0x40122f34d6a161e5L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6db2\u76ce\u53f8"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u6beb\u5347"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fl oz"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "mL"

    invoke-direct {v2, v3, v8, v9}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u91cc\u6bcf\u5c0f\u65f6"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u7c73\u6bcf\u5c0f\u65f6"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mph"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "km/h"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u82f1\u91cc\u6bcf\u79d2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u7c73/\u79d2"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mps"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "km/s"

    invoke-direct {v2, v3, v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u7801\u6bcf\u79d2"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u7c73/\u79d2"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ydps"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "m/s"

    invoke-direct {v2, v3, v10, v11}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u78c5\u82f1\u5c3a"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u725b\u7c73"

    const-wide v4, 0x3ff5ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lb-ft"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "Nm"

    const-wide v4, 0x3ff5ac710cb295eaL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5343\u78c5\u529b"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u514b\u529b"

    const-wide v4, 0x407c5970a3d70a3dL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kip"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "kg.f"

    const-wide v4, 0x407c5970a3d70a3dL

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u78c5\u6bcf\u5e73\u65b9\u82f1\u5bf8"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u5343\u5e15"

    const-wide v4, 0x401b947ae147ae14L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "psi"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "Kpa"

    const-wide v4, 0x401b947ae147ae14L

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u534e\u6c0f\u5ea6"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u6444\u6c0f\u5ea6"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "degree f"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "degree C"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00b0f"

    new-instance v2, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;

    const-string/jumbo v3, "\u00b0C"

    const-string/jumbo v4, "2"

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    sget-object v0, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversionMap;->MetricMap:Ljava/util/HashMap;

    return-object v0
.end method
