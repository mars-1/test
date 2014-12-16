.class public Lcom/cnlaunch/newgolo/Tool/DateTool;
.super Ljava/lang/Object;
.source "DateTool.java"


# static fields
.field private static instance:Lcom/cnlaunch/newgolo/Tool/DateTool;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private language:Ljava/lang/String;

.field private locale:Ljava/util/Locale;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->locale:Ljava/util/Locale;

    .line 17
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->language:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    .line 21
    return-void
.end method

.method private addZero(I)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 110
    return-object v0

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/cnlaunch/newgolo/Tool/DateTool;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/cnlaunch/newgolo/Tool/DateTool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/newgolo/Tool/DateTool;->instance:Lcom/cnlaunch/newgolo/Tool/DateTool;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/cnlaunch/newgolo/Tool/DateTool;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/Tool/DateTool;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Tool/DateTool;->instance:Lcom/cnlaunch/newgolo/Tool/DateTool;

    .line 27
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/Tool/DateTool;->instance:Lcom/cnlaunch/newgolo/Tool/DateTool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 6
    .parameter "hour"

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0xd

    const/16 v3, 0xb

    const/4 v2, 0x5

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->language:Ljava/lang/String;

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    if-ltz p1, :cond_0

    if-ge p1, v2, :cond_0

    .line 76
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->before_dawn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 77
    :cond_0
    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    .line 78
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->morning:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    if-lt p1, v3, :cond_2

    if-ge p1, v4, :cond_2

    .line 80
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->noon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    if-lt p1, v4, :cond_3

    if-ge p1, v5, :cond_3

    .line 82
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->afternoon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_3
    if-lt p1, v5, :cond_4

    const/16 v0, 0x13

    if-ge p1, v0, :cond_4

    .line 84
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->nightfall:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_4
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->night:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 11
    .parameter "millisecond"

    .prologue
    .line 31
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 32
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 33
    .local v7, year:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .line 34
    .local v3, month:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 35
    .local v0, day:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 36
    .local v1, hour:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 37
    .local v2, minute:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 39
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 40
    .local v6, now_year:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 41
    .local v5, now_month:I
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 42
    .local v4, now_day:I
    if-eq v7, v6, :cond_1

    .line 43
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->language:Ljava/lang/String;

    const-string/jumbo v9, "zh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/golo3/message/R$string;->amount_years:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 45
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/golo3/message/R$string;->amount_month:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 46
    sget-object v9, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/golo3/message/R$string;->day:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    :goto_0
    return-object v8

    .line 48
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 49
    :cond_1
    if-ne v3, v5, :cond_2

    if-ne v0, v4, :cond_2

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getTime(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 51
    :cond_2
    if-ne v3, v5, :cond_3

    add-int/lit8 v8, v4, -0x1

    if-ne v0, v8, :cond_3

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/golo3/message/R$string;->yesterday2:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getTime(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 54
    :cond_3
    iget-object v8, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->language:Ljava/lang/String;

    const-string/jumbo v9, "zh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/golo3/message/R$string;->amount_month:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 56
    sget-object v9, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    sget v10, Lcom/cnlaunch/golo3/message/R$string;->day:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getTime(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 58
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getTime(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public formatLog(J)Ljava/lang/String;
    .locals 6
    .parameter "millisecond"

    .prologue
    .line 63
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 65
    .local v0, hour:I
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 66
    .local v1, minute:I
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 67
    .local v2, second:I
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Tool/DateTool;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/Tool/DateTool;->getTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/cnlaunch/newgolo/Tool/DateTool;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
