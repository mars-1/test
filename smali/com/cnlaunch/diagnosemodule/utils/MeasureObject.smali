.class public Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;
.super Ljava/lang/Object;
.source "MeasureObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2b7b08312cb21441L


# instance fields
.field private ratio:D

.field private type:Ljava/lang/String;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 2
    .parameter "unit"
    .parameter "ratio"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    .line 26
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ratio:D

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->unit:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    .line 31
    iput-wide p2, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ratio:D

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "unit"
    .parameter "type"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    .line 26
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ratio:D

    .line 35
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->unit:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static ParseDoubleValue(Ljava/lang/String;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 79
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public toValue(Ljava/lang/String;)D
    .locals 10
    .parameter "value"

    .prologue
    const-wide/high16 v8, 0x4040

    .line 48
    const-wide/16 v2, 0x0

    .line 50
    .local v2, valuedouble:D
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-static {p1}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ratio:D

    mul-double v2, v4, v6

    .line 52
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 54
    .local v0, bigDecimal:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    .line 70
    .end local v0           #bigDecimal:Ljava/math/BigDecimal;
    :goto_0
    return-wide v4

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-static {p1}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v4, v8

    const-wide/high16 v6, 0x4014

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4022

    div-double v2, v4, v6

    .line 57
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 59
    .restart local v0       #bigDecimal:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    .line 60
    .end local v0           #bigDecimal:Ljava/math/BigDecimal;
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->type:Ljava/lang/String;

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-static {p1}, Lcom/cnlaunch/diagnosemodule/utils/MeasureObject;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x3ffccccccccccccdL

    mul-double/2addr v4, v6

    add-double v2, v4, v8

    .line 62
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 64
    .restart local v0       #bigDecimal:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .end local v0           #bigDecimal:Ljava/math/BigDecimal;
    :cond_2
    move-wide v4, v2

    .line 66
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "Sanda"

    const-string/jumbo v5, "[Bean toValue is Failed!]"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v2

    .line 70
    goto :goto_0
.end method
