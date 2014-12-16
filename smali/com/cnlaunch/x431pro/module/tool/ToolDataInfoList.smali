.class public Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ToolDataInfoList.java"


# static fields
.field private static final serialVersionUID:J = 0x25502dfce156c392L


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->refreshData(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public refreshData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 38
    .local v0, infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const-string/jumbo v1, "com.cnlaunch.oscilloscope"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 40
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203ae

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 41
    const v1, 0x7f070698

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 42
    const-string/jumbo v1, "com.cnlaunch.oscilloscope"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "com.cnlaunch.oscilloscope.OscilloscopeActivity"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    const-string/jumbo v1, "com.cnlaunch.sensor"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 49
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203b0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 50
    const v1, 0x7f070699

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 51
    const-string/jumbo v1, "com.cnlaunch.sensor"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "com.cnlaunch.sensor.SensorActivity"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    const-string/jumbo v1, "com.cnlaunch.sensor"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 58
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203ad

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 59
    const v1, 0x7f07069a

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 60
    const-string/jumbo v1, "com.cnlaunch.sensor"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "com.cnlaunch.multimeter.MultimeterActivity"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_3
    const-string/jumbo v1, "com.cnlaunch.batterytest"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 67
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203a9

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 68
    const v1, 0x7f07069b

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 69
    const-string/jumbo v1, "com.cnlaunch.batterytest"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "com.cnlaunch.batterytest.BatteryTestActivity"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_4
    const-string/jumbo v1, "com.android.gallery3d"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 76
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203aa

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 77
    const v1, 0x7f07069c

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 78
    const-string/jumbo v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "com.android.camera.CameraLauncher"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_5
    const-string/jumbo v1, "com.android.gallery3d"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 85
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203af

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 86
    const v1, 0x7f07069d

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 87
    const-string/jumbo v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "com.android.camera.CameraLauncher"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_6
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 93
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203b1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 94
    const v1, 0x7f07069e

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 95
    const-string/jumbo v1, "browser"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "browser"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string/jumbo v1, "com.cnlaunch.ignition"

    invoke-static {p1, v1}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    new-instance v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;-><init>()V

    .line 101
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    const v1, 0x7f0203ab

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setImageResid(I)V

    .line 102
    const v1, 0x7f07069f

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setTitleResid(I)V

    .line 103
    const-string/jumbo v1, "com.cnlaunch.ignition"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setPkgeName(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "com.cnlaunch.ignition.IgnitionActivity"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->setClsName(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_7
    return-void
.end method
