.class public Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "MineCarInfoData.java"


# static fields
.field private static final serialVersionUID:J = 0x79090ac90ae4ea5eL


# instance fields
.field private car_brand_vin:Ljava/lang/String;

.field private car_displacement:Ljava/lang/String;

.field private car_gearbox_type:Ljava/lang/String;

.field private car_producing_year:Ljava/lang/String;

.field private car_series_name:Ljava/lang/String;

.field private car_type_id:Ljava/lang/String;

.field private mine_car_plate_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCar_brand_vin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_brand_vin:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_displacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_displacement:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_gearbox_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_gearbox_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_producing_year()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_producing_year:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_series_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_series_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_type_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_type_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMine_car_plate_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->mine_car_plate_num:Ljava/lang/String;

    return-object v0
.end method

.method public setCar_brand_vin(Ljava/lang/String;)V
    .locals 0
    .parameter "car_brand_vin"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_brand_vin:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCar_displacement(Ljava/lang/String;)V
    .locals 0
    .parameter "car_displacement"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_displacement:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCar_gearbox_type(Ljava/lang/String;)V
    .locals 0
    .parameter "car_gearbox_type"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_gearbox_type:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCar_producing_year(Ljava/lang/String;)V
    .locals 0
    .parameter "car_producing_year"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_producing_year:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCar_series_name(Ljava/lang/String;)V
    .locals 0
    .parameter "car_series_name"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_series_name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCar_type_id(Ljava/lang/String;)V
    .locals 0
    .parameter "car_type_id"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->car_type_id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMine_car_plate_num(Ljava/lang/String;)V
    .locals 0
    .parameter "mine_car_plate_num"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;->mine_car_plate_num:Ljava/lang/String;

    .line 29
    return-void
.end method
