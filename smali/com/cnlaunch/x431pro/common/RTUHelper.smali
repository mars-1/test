.class public abstract Lcom/cnlaunch/x431pro/common/RTUHelper;
.super Ljava/lang/Object;
.source "RTUHelper.java"


# instance fields
.field private curTime:Ljava/lang/Long;

.field private lastRemindTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private tryFlagStartTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/common/RTUHelper;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private saveTryDataTxt()V
    .locals 5

    .prologue
    .line 235
    new-instance v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "serialNo"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    .local v0, productInformation1:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "lastRemindTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setLastRemindTime(J)V

    .line 237
    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method public abstract finishActivity()V
.end method

.method public readTryData()V
    .locals 7

    .prologue
    .line 213
    sget-boolean v3, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v3, :cond_0

    .line 215
    :try_start_0
    new-instance v1, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    .local v1, productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "tryFlag"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->isTryFlag()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 217
    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "tryFlagStartTime"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->getTryFlagStartTime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 218
    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "lastRemindTime"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->getLastRemindTime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 219
    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "totalDiagTime"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->getTotalDiagTime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 220
    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "diagTime_date"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->getDiagTimeDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, tryserialNo:Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v2           #tryserialNo:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public remindToRegisterDur()V
    .locals 5

    .prologue
    .line 252
    new-instance v0, Lcom/cnlaunch/x431pro/common/RTUHelper$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/common/RTUHelper$1;-><init>(Lcom/cnlaunch/x431pro/common/RTUHelper;)V

    .line 269
    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0706f3

    const v3, 0x7f0706f4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/common/RTUHelper$1;->showDifDialog(Landroid/content/Context;IIZ)V

    .line 270
    return-void
.end method

.method public remindToRegisterOver()V
    .locals 5

    .prologue
    .line 285
    new-instance v0, Lcom/cnlaunch/x431pro/common/RTUHelper$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/common/RTUHelper$2;-><init>(Lcom/cnlaunch/x431pro/common/RTUHelper;)V

    .line 303
    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0706f3

    const v3, 0x7f0706f4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/common/RTUHelper$2;->showDifDialog(Landroid/content/Context;IIZ)V

    .line 304
    return-void
.end method

.method public tryFlagRemind()V
    .locals 15

    .prologue
    const-wide/32 v13, 0x5265c00

    const-wide/32 v11, 0x240c8400

    const v10, 0x7f0706f5

    const-wide/16 v8, 0x0

    const-wide/32 v6, 0x6c258c00

    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "tryFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    invoke-virtual {v0, v1, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "tryFlagStartTime"

    invoke-virtual {v0, v1, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v11

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 41
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 50
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v11

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 53
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 67
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x48190800

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 70
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 71
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_0

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_1

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_1

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_2

    .line 58
    :cond_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v11

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 61
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 62
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_2

    .line 63
    :cond_8
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v11

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_2

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_0

    .line 75
    :cond_a
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 78
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 79
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_0

    .line 80
    :cond_b
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x48190800

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_0

    .line 84
    :cond_c
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x90321000L

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v2, v13

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_13

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 88
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 101
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    add-long/2addr v0, v13

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_16

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 104
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 105
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 118
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0xf731400

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_19

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 121
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 122
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 135
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0x14997000

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_1c

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 138
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 139
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 152
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0x14997000

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0x19bfcc00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_1f

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 155
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 156
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 169
    :cond_11
    :goto_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0x19bfcc00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0x1ee62800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_22

    .line 171
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 172
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 173
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    .line 186
    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0x1ee62800

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v2, v11

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_25

    .line 188
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 189
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 190
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_0

    .line 90
    :cond_13
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_3

    .line 93
    :cond_14
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_15

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_15

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 95
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_3

    .line 97
    :cond_15
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_3

    .line 106
    :cond_16
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_4

    .line 109
    :cond_17
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v2, v13

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 111
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 112
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_4

    .line 113
    :cond_18
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    add-long/2addr v0, v13

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_4

    .line 123
    :cond_19
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_5

    .line 126
    :cond_1a
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 128
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 129
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_5

    .line 130
    :cond_1b
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_5

    .line 140
    :cond_1c
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_6

    .line 143
    :cond_1d
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0xf731400

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 145
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 146
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_6

    .line 147
    :cond_1e
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_6

    .line 157
    :cond_1f
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 158
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_7

    .line 160
    :cond_20
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0x14997000

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_21

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 162
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 163
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_7

    .line 164
    :cond_21
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0x14997000

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_7

    .line 174
    :cond_22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_8

    .line 177
    :cond_23
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_24

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0x19bfcc00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_24

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 179
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 180
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_8

    .line 181
    :cond_24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0x19bfcc00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_8

    .line 191
    :cond_25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 192
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->finishActivity()V

    goto/16 :goto_0

    .line 194
    :cond_26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_27

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/32 v4, 0x1ee62800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_27

    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 196
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 197
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterDur()V

    goto/16 :goto_0

    .line 198
    :cond_27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/32 v2, 0x1ee62800

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->lastRemindTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_0

    .line 203
    :cond_28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x90321000L

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "lastRemindTime"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/common/RTUHelper;->curTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 205
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->saveTryDataTxt()V

    .line 206
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/common/RTUHelper;->remindToRegisterOver()V

    goto/16 :goto_0
.end method
