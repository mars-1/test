.class public Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;
.super Ljava/lang/Object;
.source "PrintDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v9, 0x0

    .line 27
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v7, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    if-eqz v8, :cond_2

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_1

    .line 68
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 31
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    .line 32
    .local v5, pBasicSelectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0           #i:I
    .end local v5           #pBasicSelectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    :cond_2
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    if-eqz v8, :cond_4

    .line 36
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    .line 38
    .local v3, pBasicFaultCodeBean:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "CONSULT HANDBOOK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 39
    const v8, 0x7f070565

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->setContext(Ljava/lang/String;)V

    .line 41
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    .end local v0           #i:I
    .end local v3           #pBasicFaultCodeBean:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    :cond_4
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    if-eqz v8, :cond_5

    .line 45
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 47
    .local v2, pBasicDataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    .end local v0           #i:I
    .end local v2           #pBasicDataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    :cond_5
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;

    if-eqz v8, :cond_6

    .line 51
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;

    .line 53
    .local v1, pBasicCombineMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 55
    .end local v0           #i:I
    .end local v1           #pBasicCombineMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;
    :cond_6
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;

    if-eqz v8, :cond_7

    .line 57
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;

    .line 59
    .local v4, pBasicMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 61
    .end local v0           #i:I
    .end local v4           #pBasicMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;
    :cond_7
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    if-eqz v8, :cond_0

    .line 63
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    .line 65
    .local v6, pBasicSpeciaFunctionBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static printDataPic(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "mContext"
    .parameter "printStrData"

    .prologue
    .line 106
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->drawBitSecond(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, bmp2:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->drawBitFirst(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, bmp1:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 113
    .local v3, result:I
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/common/Constants;->IS_SHOW_PRINTER_SET:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/common/Constants;->printerIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->printPic(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v3

    .line 118
    :goto_0
    return v3

    .line 116
    :cond_0
    invoke-static {p0, v0}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->printPic(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v3

    goto :goto_0
.end method

.method public static printDataPic(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)I
    .locals 7
    .parameter "mContext"
    .parameter "printStrData"
    .parameter "diagnoseRunningInfo"

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->drawBitSecond(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    .local v2, bmp2:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->drawBitFirst(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, bmp1:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 141
    .local v3, result:I
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/common/Constants;->IS_SHOW_PRINTER_SET:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/common/Constants;->printerIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->printPic(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v3

    .line 146
    :goto_0
    return v3

    .line 144
    :cond_0
    invoke-static {p0, v0}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->printPic(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v3

    goto :goto_0
.end method

.method public static printDataPicNotitle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "mContext"
    .parameter "printStrData"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->drawBitSecond(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    .local v2, bmp2:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->drawBitFirst(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    .local v1, bmp1:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 87
    .local v3, result:I
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/common/Constants;->IS_SHOW_PRINTER_SET:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/common/Constants;->printerIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->printPic(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v3

    .line 94
    :goto_0
    return v3

    .line 91
    :cond_0
    invoke-static {p0, v0}, Lcom/cnlaunch/x431pro/utils/print/NetPOSPrinterUtilPro;->printPic(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v3

    goto :goto_0
.end method
