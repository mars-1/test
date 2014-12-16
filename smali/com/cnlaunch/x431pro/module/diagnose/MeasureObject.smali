.class public Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "MeasureObject.java"


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
    .line 26
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 18
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->type:Ljava/lang/String;

    .line 24
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ratio:D

    .line 27
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->unit:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->type:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ratio:D

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "unit"
    .parameter "type"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 18
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->type:Ljava/lang/String;

    .line 24
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ratio:D

    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->unit:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->type:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static ParseDoubleValue(Ljava/lang/String;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 63
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public toValue(Ljava/lang/String;)D
    .locals 12
    .parameter "value"

    .prologue
    const-wide/high16 v10, 0x4059

    const-wide/high16 v8, 0x4040

    .line 46
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->type:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ratio:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    .local v0, valuedouble:D
    move-wide v2, v0

    .line 54
    .end local v0           #valuedouble:D
    .local v2, valuedouble:D
    :goto_0
    return-wide v2

    .line 49
    .end local v2           #valuedouble:D
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->type:Ljava/lang/String;

    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v4, v8

    const-wide/high16 v6, 0x4014

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4022

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v0, v4, v10

    .restart local v0       #valuedouble:D
    move-wide v2, v0

    .line 51
    .end local v0           #valuedouble:D
    .restart local v2       #valuedouble:D
    goto :goto_0

    .line 53
    .end local v2           #valuedouble:D
    :cond_1
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/diagnose/MeasureObject;->ParseDoubleValue(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x3ffccccccccccccdL

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    .restart local v0       #valuedouble:D
    move-wide v2, v0

    .line 54
    .end local v0           #valuedouble:D
    .restart local v2       #valuedouble:D
    goto :goto_0
.end method
