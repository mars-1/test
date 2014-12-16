.class public Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicDataStreamBean.java"


# static fields
.field private static final serialVersionUID:J = 0x7ce4e8bd0edfd959L


# instance fields
.field private conversionType:I

.field dosUnit:[Ljava/lang/String;

.field dosValue:[Ljava/lang/String;

.field help:Ljava/lang/String;

.field id:Ljava/lang/String;

.field title:Ljava/lang/String;

.field unit:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    .line 14
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->dosValue:[Ljava/lang/String;

    .line 15
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->dosUnit:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->conversionType:I

    .line 5
    return-void
.end method


# virtual methods
.method public doConversion()V
    .locals 0

    .prologue
    .line 126
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->convertImperialToMetric(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V

    .line 127
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/MeasureConversionBean;->convertMetricToImperial(Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V

    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 89
    :try_start_0
    instance-of v2, p1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    if-eqz v2, :cond_5

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 111
    .end local p1
    :goto_0
    return v2

    .line 93
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcValue()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->value:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getSrcUnit()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->unit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 100
    goto :goto_0

    .line 102
    :cond_3
    check-cast p1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .end local p1
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->help:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .restart local p1
    :cond_5
    move v2, v3

    .line 107
    goto :goto_0

    .line 109
    .end local p1
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v2, v3

    .line 111
    goto :goto_0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->help:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->conversionType:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->dosUnit:[Ljava/lang/String;

    iget v1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->conversionType:I

    aget-object v0, v0, v1

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->unit:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->conversionType:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->dosValue:[Ljava/lang/String;

    iget v1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->conversionType:I

    aget-object v0, v0, v1

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setConversion(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 116
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->conversionType:I

    .line 117
    return-void
.end method

.method public setConversionUnit(Ljava/lang/String;I)V
    .locals 1
    .parameter "unit"
    .parameter "type"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->dosUnit:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 59
    return-void
.end method

.method public setConversionValue(Ljava/lang/String;I)V
    .locals 1
    .parameter "value"
    .parameter "type"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->dosValue:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 54
    return-void
.end method

.method public setHelp(Ljava/lang/String;)V
    .locals 0
    .parameter "help"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->help:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .parameter "unit"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->unit:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->value:Ljava/lang/String;

    .line 49
    return-void
.end method
