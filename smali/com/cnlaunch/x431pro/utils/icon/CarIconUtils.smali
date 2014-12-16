.class public Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
.super Ljava/lang/Object;
.source "CarIconUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field public static ASIA:Ljava/lang/String;

.field public static CHINA:Ljava/lang/String;

.field public static COMMON:Ljava/lang/String;

.field public static EUROPE:Ljava/lang/String;

.field public static HEAVYDUTY:Ljava/lang/String;

.field public static USA:Ljava/lang/String;

.field private static final tag:Ljava/lang/String;


# instance fields
.field private bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;

.field private carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

.field private carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

.field private daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "ASIA"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->ASIA:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "CHINA"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->CHINA:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "EUROPE"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->EUROPE:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "USA"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->USA:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "COMMON"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->COMMON:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "HEAVYDUTY"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->HEAVYDUTY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getCarIconDao()Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getCarVersionDao()Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;Lcom/cnlaunch/x431pro/utils/db/CarIcon;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)Lcom/cnlaunch/x431pro/utils/db/CarIconDao;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    return-object v0
.end method

.method private addNewVehicleSoftInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .parameter "serialNo"
    .parameter "areaId"

    .prologue
    .line 225
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, newVehiclesPath:Ljava/lang/String;
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v19, vehiclePathFile:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 229
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, fileList:[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v22, v0

    if-lez v22, :cond_0

    .line 231
    array-length v0, v9

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 281
    .end local v9           #fileList:[Ljava/lang/String;
    .end local v19           #vehiclePathFile:Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 231
    .restart local v9       #fileList:[Ljava/lang/String;
    .restart local v19       #vehiclePathFile:Ljava/io/File;
    :cond_1
    aget-object v10, v9, v22

    .line 232
    .local v10, fileName:Ljava/lang/String;
    new-instance v5, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    invoke-direct {v5}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;-><init>()V

    .line 233
    .local v5, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSerialNo(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setAreaId(Ljava/lang/String;)V

    .line 235
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIsDownload(Ljava/lang/Boolean;)V

    .line 236
    invoke-virtual {v5, v10}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSoftPackageId(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIcon(Ljava/lang/String;)V

    .line 238
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v13, v24, v25

    const/16 v25, 0x1

    aput-object v10, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 239
    .local v20, versionPath:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getVersionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 240
    .local v21, versionStr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getMaxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, maxVersion:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllLanguageListOfTheCar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, allLanguages:Ljava/lang/String;
    invoke-virtual {v5, v12}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setMaxversion(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVersionlist(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5, v4}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setLanguageList(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVehiclePath(Ljava/lang/String;)V

    .line 246
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "VEHICLE.INI"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    .local v11, iniFileName:Ljava/lang/String;
    invoke-static {v11}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->IniReaderHasSection(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    .line 248
    .local v18, sections:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    if-eqz v18, :cond_2

    .line 249
    const-string/jumbo v24, "Name"

    const-string/jumbo v25, "English"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, carName:Ljava/lang/String;
    const-string/jumbo v24, "Name"

    const-string/jumbo v25, "Chinese"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, carNameForZH:Ljava/lang/String;
    const-string/jumbo v24, "AbbrName"

    const-string/jumbo v25, "English"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 252
    .local v16, sName:Ljava/lang/String;
    const-string/jumbo v24, "AbbrName"

    const-string/jumbo v25, "Chinese"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 253
    .local v17, sNameForZH:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setName(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5, v7}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setName_zh(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSname(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSname_zh(Ljava/lang/String;)V

    .line 258
    .end local v6           #carName:Ljava/lang/String;
    .end local v7           #carNameForZH:Ljava/lang/String;
    .end local v16           #sName:Ljava/lang/String;
    .end local v17           #sNameForZH:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v14

    .line 259
    .local v14, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    sget-object v24, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Lde/greenrobot/dao/query/WhereCondition;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->AreaId:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 260
    invoke-virtual {v14}, Lde/greenrobot/dao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 262
    .local v15, result:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    if-nez v15, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->insert(Ljava/lang/Object;)J

    .line 274
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addOrUpdateCarVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 265
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSerialNo(Ljava/lang/String;)V

    .line 266
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIsDownload(Ljava/lang/Boolean;)V

    .line 267
    invoke-virtual {v15, v12}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setMaxversion(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVersionlist(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v15, v4}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setLanguageList(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVehiclePath(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 278
    .end local v4           #allLanguages:Ljava/lang/String;
    .end local v5           #carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    .end local v9           #fileList:[Ljava/lang/String;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v11           #iniFileName:Ljava/lang/String;
    .end local v12           #maxVersion:Ljava/lang/String;
    .end local v14           #qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    .end local v15           #result:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    .end local v18           #sections:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    .end local v19           #vehiclePathFile:Ljava/io/File;
    .end local v20           #versionPath:Ljava/lang/String;
    .end local v21           #versionStr:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 279
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private addOrUpdateCarVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "serialNo"
    .parameter "softPackageId"
    .parameter "versionPath"
    .parameter "versionStr"

    .prologue
    .line 196
    invoke-static/range {p4 .. p4}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllVersions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, allVersions:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    .line 198
    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 222
    :cond_0
    return-void

    .line 198
    :cond_1
    aget-object v5, v0, v6

    .line 199
    .local v5, versionNo:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, languagePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getLanguageListOfTheVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, theVersionLanguage:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    .line 203
    .local v3, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    sget-object v8, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v10, 0x0

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->VersionNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 204
    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .line 206
    .local v1, carVersion:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    if-nez v1, :cond_2

    .line 207
    new-instance v1, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .end local v1           #carVersion:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    invoke-direct {v1}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;-><init>()V

    .line 208
    .restart local v1       #carVersion:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setSerialNo(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, p2}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setSoftPackageId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setVersionNo(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setLanguageList(Ljava/lang/String;)V

    .line 212
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setIsExist(Ljava/lang/Boolean;)V

    .line 213
    iget-object v8, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v8, v1}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->insert(Ljava/lang/Object;)J

    .line 198
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setLanguageList(Ljava/lang/String;)V

    .line 217
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setIsExist(Ljava/lang/Boolean;)V

    .line 218
    iget-object v8, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v8, v1}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->update(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getAllLanguageListOfTheCar(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "versionPath"

    .prologue
    const/4 v8, 0x0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, allLanguageList:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getVersionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, versionStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 417
    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, versionList:[Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_2

    .line 427
    .end local v5           #versionList:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, reult:Ljava/lang/String;
    const-string/jumbo v7, "$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-le v7, v9, :cond_1

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 432
    :cond_1
    sget-object v7, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getAllLanguageListOfTheCar exit, result="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    return-object v2

    .line 418
    .end local v2           #reult:Ljava/lang/String;
    .restart local v5       #versionList:[Ljava/lang/String;
    :cond_2
    aget-object v4, v5, v7

    .line 419
    .local v4, version:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, languagePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getLanguageListOfTheVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, theVersionLanguages:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 422
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static getAllVersions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "versionStr"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, versionList:[Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_0
    return-object v0
.end method

.method public static getLanguageListOfTheVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "languagePath"

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v5, languageList:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 441
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 445
    .local v6, list:[Ljava/io/File;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-lez v8, :cond_0

    .line 446
    array-length v10, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    :goto_0
    if-lt v8, v10, :cond_2

    .line 460
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #list:[Ljava/io/File;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, reult:Ljava/lang/String;
    const-string/jumbo v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-le v8, v10, :cond_1

    .line 462
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 466
    :cond_1
    return-object v7

    .line 446
    .end local v7           #reult:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v6       #list:[Ljava/io/File;
    :cond_2
    :try_start_1
    aget-object v0, v6, v8

    .line 447
    .local v0, bean:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 448
    const-string/jumbo v11, "INI_"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 449
    const-string/jumbo v11, "_"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, lanFile:[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    .end local v4           #lanFile:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 456
    .end local v0           #bean:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #list:[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 457
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v1, v8, v10}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getMaxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "versionPath"

    .prologue
    .line 339
    const-string/jumbo v2, ""

    .line 340
    .local v2, fileName:Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 341
    .local v5, version:Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 342
    .local v4, newVersion:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 343
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 346
    .local v3, list:[Ljava/io/File;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 357
    .end local v1           #file:Ljava/io/File;
    .end local v3           #list:[Ljava/io/File;
    :cond_0
    return-object v5

    .line 346
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #list:[Ljava/io/File;
    :cond_1
    aget-object v0, v3, v6

    .line 347
    .local v0, bean:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "V"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 349
    move-object v4, v2

    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 351
    move-object v5, v4

    .line 346
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getVersionList(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "versionPath"

    .prologue
    const/4 v8, 0x0

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v6, verlist:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 374
    .local v4, list:[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    .line 375
    array-length v9, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_2

    .line 388
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #list:[Ljava/io/File;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, reult:Ljava/lang/String;
    const-string/jumbo v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-le v7, v9, :cond_1

    .line 390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 394
    :cond_1
    return-object v5

    .line 375
    .end local v5           #reult:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #list:[Ljava/io/File;
    :cond_2
    :try_start_1
    aget-object v0, v4, v7

    .line 376
    .local v0, bean:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "V"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 378
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 384
    .end local v0           #bean:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #list:[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 385
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAllCarList()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    sget-object v13, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "getAllCarList enter."

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v11, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    const/4 v9, 0x0

    .line 541
    .local v9, queryList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v13}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    .line 542
    .local v7, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, currentCountry:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->toLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 544
    .local v6, matchLanguage:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, conditionLanguage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v13

    const-string/jumbo v14, "serialNo"

    invoke-virtual {v13, v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 547
    .local v12, serialNo:Ljava/lang/String;
    const-string/jumbo v13, "CN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 548
    sget-object v13, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v15, 0x0

    .line 549
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 550
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    .line 548
    invoke-virtual {v7, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 551
    const/4 v13, 0x1

    new-array v13, v13, [Lde/greenrobot/dao/Property;

    const/4 v14, 0x0

    sget-object v15, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname_zh:Lde/greenrobot/dao/Property;

    aput-object v15, v13, v14

    invoke-virtual {v7, v13}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 552
    invoke-virtual {v7}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v9

    .line 591
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 592
    .local v5, isAdded:Z
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 593
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_9

    .line 608
    :cond_2
    sget-object v13, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "queryList.size="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",result.size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    return-object v11

    .line 553
    .end local v5           #isAdded:Z
    :cond_3
    const-string/jumbo v13, "EN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 554
    sget-object v13, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v15, 0x0

    .line 555
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 556
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    .line 554
    invoke-virtual {v7, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 557
    const/4 v13, 0x1

    new-array v13, v13, [Lde/greenrobot/dao/Property;

    const/4 v14, 0x0

    sget-object v15, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname:Lde/greenrobot/dao/Property;

    aput-object v15, v13, v14

    invoke-virtual {v7, v13}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 558
    invoke-virtual {v7}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v9

    .line 559
    goto/16 :goto_0

    .line 560
    :cond_4
    sget-object v13, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v15, 0x0

    .line 561
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 562
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    .line 560
    invoke-virtual {v7, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 563
    const/4 v13, 0x1

    new-array v13, v13, [Lde/greenrobot/dao/Property;

    const/4 v14, 0x0

    sget-object v15, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname:Lde/greenrobot/dao/Property;

    aput-object v15, v13, v14

    invoke-virtual {v7, v13}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 564
    invoke-virtual {v7}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v9

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v13}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v8

    .line 567
    .local v8, qbEN:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    sget-object v13, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v15, 0x0

    .line 568
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    const-string/jumbo v17, "%EN%"

    invoke-virtual/range {v16 .. v17}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 569
    sget-object v16, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v16

    aput-object v16, v14, v15

    .line 567
    invoke-virtual {v8, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 570
    const/4 v13, 0x1

    new-array v13, v13, [Lde/greenrobot/dao/Property;

    const/4 v14, 0x0

    sget-object v15, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname:Lde/greenrobot/dao/Property;

    aput-object v15, v13, v14

    invoke-virtual {v8, v13}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 571
    invoke-virtual {v8}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    .line 573
    .local v10, queryListEN:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 574
    :cond_5
    move-object v9, v10

    .line 575
    goto/16 :goto_0

    .line 576
    :cond_6
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 577
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 582
    new-instance v13, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$4;-><init>(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)V

    invoke-static {v9, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    .line 577
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 578
    .local v1, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 579
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 593
    .end local v1           #carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    .end local v8           #qbEN:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    .end local v10           #queryListEN:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    .restart local v5       #isAdded:Z
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 594
    .restart local v1       #carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    const/4 v5, 0x0

    .line 595
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 596
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_c

    .line 603
    :cond_b
    :goto_3
    if-nez v5, :cond_1

    .line 604
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 596
    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 597
    .local v4, entity:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 598
    const/4 v5, 0x1

    .line 599
    goto :goto_3
.end method

.method public getAreaCarList(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "areaId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    const/4 v7, 0x0

    .line 478
    .local v7, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    iget-object v9, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 479
    .local v4, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, currentCountry:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->toLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, matchLanguage:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "%"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, conditionLanguage:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v9

    const-string/jumbo v10, "serialNo"

    invoke-virtual {v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, serialNo:Ljava/lang/String;
    sget-object v9, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "conditionLanguage="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "serialNo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    const-string/jumbo v9, "CN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 486
    sget-object v9, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->AreaId:Lde/greenrobot/dao/Property;

    invoke-virtual {v9, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v11, 0x0

    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 487
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v1}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 488
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    .line 486
    invoke-virtual {v4, v9, v10}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 489
    const/4 v9, 0x1

    new-array v9, v9, [Lde/greenrobot/dao/Property;

    const/4 v10, 0x0

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname_zh:Lde/greenrobot/dao/Property;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 490
    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 527
    :cond_0
    :goto_0
    sget-object v9, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getAreaCarList exit,result="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    return-object v7

    .line 491
    :cond_1
    const-string/jumbo v9, "EN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 492
    sget-object v9, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->AreaId:Lde/greenrobot/dao/Property;

    invoke-virtual {v9, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v11, 0x0

    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 493
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v1}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 494
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    .line 492
    invoke-virtual {v4, v9, v10}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 495
    const/4 v9, 0x1

    new-array v9, v9, [Lde/greenrobot/dao/Property;

    const/4 v10, 0x0

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname:Lde/greenrobot/dao/Property;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 496
    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 497
    goto :goto_0

    .line 498
    :cond_2
    sget-object v9, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->AreaId:Lde/greenrobot/dao/Property;

    invoke-virtual {v9, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v11, 0x0

    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 499
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v1}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 500
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    .line 498
    invoke-virtual {v4, v9, v10}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 501
    const/4 v9, 0x1

    new-array v9, v9, [Lde/greenrobot/dao/Property;

    const/4 v10, 0x0

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname:Lde/greenrobot/dao/Property;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 502
    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 503
    iget-object v9, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    .line 504
    .local v5, qbEN:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    sget-object v9, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->AreaId:Lde/greenrobot/dao/Property;

    invoke-virtual {v9, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v11, 0x0

    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->IsDownload:Lde/greenrobot/dao/Property;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 505
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    const-string/jumbo v13, "%EN%"

    invoke-virtual {v12, v13}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 506
    sget-object v12, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v12, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v10, v11

    .line 504
    invoke-virtual {v5, v9, v10}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 507
    const/4 v9, 0x1

    new-array v9, v9, [Lde/greenrobot/dao/Property;

    const/4 v10, 0x0

    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->Sname:Lde/greenrobot/dao/Property;

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 508
    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v6

    .line 509
    .local v6, queryListEN:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 510
    :cond_3
    move-object v7, v6

    .line 511
    goto/16 :goto_0

    .line 512
    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 513
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 518
    new-instance v9, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$3;

    invoke-direct {v9, p0}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$3;-><init>(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    .line 513
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 514
    .local v0, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 515
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getMatchedVersionListByLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "serialNo"
    .parameter "softPackageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    sget-object v8, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "getMatchedVersionListByLanguage enter,serialNo="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",softPackageId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 615
    .local v4, matchedVersionList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 616
    .local v7, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    iget-object v8, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    .line 617
    .local v5, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, currentCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->toLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, matchLanguage:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "%"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, languageCondition:Ljava/lang/String;
    sget-object v8, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "languageCondition="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    const-string/jumbo v8, "CN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 622
    sget-object v8, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v10, 0x0

    .line 623
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 624
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, v2}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 625
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->IsExist:Lde/greenrobot/dao/Property;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    .line 622
    invoke-virtual {v5, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 626
    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 650
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 651
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 655
    :cond_1
    sget-object v8, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "getMatchedVersionListByLanguage exit,matchedVersionList="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    return-object v7

    .line 627
    :cond_2
    const-string/jumbo v8, "EN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 628
    sget-object v8, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v10, 0x0

    .line 629
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 630
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->IsExist:Lde/greenrobot/dao/Property;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 631
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, v2}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    .line 628
    invoke-virtual {v5, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 632
    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 633
    goto :goto_0

    .line 635
    :cond_3
    sget-object v8, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v10, 0x0

    .line 636
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 637
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->IsExist:Lde/greenrobot/dao/Property;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 638
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, v2}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    .line 635
    invoke-virtual {v5, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 639
    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 640
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 641
    :cond_4
    iget-object v8, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    .line 642
    .local v6, qbEN:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    sget-object v8, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v10, 0x0

    .line 643
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 644
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->IsExist:Lde/greenrobot/dao/Property;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 645
    sget-object v11, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    const-string/jumbo v12, "%EN%"

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    .line 642
    invoke-virtual {v6, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 646
    invoke-virtual {v6}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    goto/16 :goto_0

    .line 651
    .end local v6           #qbEN:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .line 652
    .local v0, carVersion:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public getMaxVersionBySoftId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "serialNo"
    .parameter "softPackageId"
    .parameter "lanId"

    .prologue
    .line 284
    const-string/jumbo v3, ""

    .line 285
    .local v3, maxVersion:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v3

    .line 310
    .end local v3           #maxVersion:Ljava/lang/String;
    .local v4, maxVersion:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 288
    .end local v4           #maxVersion:Ljava/lang/String;
    .restart local v3       #maxVersion:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, currentCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->toLan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, matchLanguage:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, conditionLanguage:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    .line 295
    .local v5, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    sget-object v7, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v9, 0x0

    sget-object v10, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 296
    sget-object v10, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->IsExist:Lde/greenrobot/dao/Property;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 297
    sget-object v10, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->Languagelist:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, v0}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v8, v9

    .line 295
    invoke-virtual {v5, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 298
    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v6

    .line 300
    .local v6, updateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    new-instance v7, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$2;

    invoke-direct {v7, p0}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$2;-><init>(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v4, v3

    .line 310
    .end local v3           #maxVersion:Ljava/lang/String;
    .restart local v4       #maxVersion:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getVehiclePathBySoftId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "serialNo"
    .parameter "softPackageId"

    .prologue
    const/4 v8, 0x0

    .line 314
    const-string/jumbo v3, ""

    .line 315
    .local v3, vehiclePath:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 328
    .end local v3           #vehiclePath:Ljava/lang/String;
    .local v4, vehiclePath:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 318
    .end local v4           #vehiclePath:Ljava/lang/String;
    .restart local v3       #vehiclePath:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 319
    .local v1, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    sget-object v5, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    sget-object v7, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 320
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 322
    .local v2, updateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 323
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 324
    .local v0, item:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getVehiclePath()Ljava/lang/String;

    move-result-object v3

    .end local v0           #item:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    :cond_1
    move-object v4, v3

    .line 328
    .end local v3           #vehiclePath:Ljava/lang/String;
    .restart local v4       #vehiclePath:Ljava/lang/String;
    goto :goto_0
.end method

.method public initCarIcon()Z
    .locals 7

    .prologue
    .line 82
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;

    .line 83
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/icon/ChinaIcon;->getLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, chinaList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/icon/AsiaIcon;->getLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, asiaList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/icon/EuroIcon;->getLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, euroList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/icon/AmericaIcon;->getLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, americaList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->list:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v5, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->daoSession:Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    new-instance v6, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils$1;-><init>(Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;)V

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->runInTx(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v5, 0x1

    .end local v0           #americaList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1           #asiaList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #chinaList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #euroList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return v5

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isNeedInit()Z
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeTheCarVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "serialNo"
    .parameter "softPackageId"
    .parameter "versionNo"

    .prologue
    .line 660
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 661
    .local v1, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    sget-object v2, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SerialNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v4, 0x0

    sget-object v5, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao$Properties;->VersionNo:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 662
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .line 663
    .local v0, entity:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->delete(Ljava/lang/Object;)V

    .line 664
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 20
    .parameter "serialNo"

    .prologue
    .line 136
    sget-object v15, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->tag:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "update enter, serialNo="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, vehiclesPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->loadAll()Ljava/util/List;

    move-result-object v9

    .line 142
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 143
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    invoke-virtual {v15, v9}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->loadAll()Ljava/util/List;

    move-result-object v4

    .line 151
    .local v4, carVersionList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 152
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_4

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carVersionDao:Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;

    invoke-virtual {v15, v4}, Lcom/cnlaunch/x431pro/utils/db/CarVersionDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 158
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 159
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, fileList:[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v15, v6

    if-lez v15, :cond_2

    .line 161
    array-length v0, v6

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 188
    .end local v6           #fileList:[Ljava/lang/String;
    :cond_2
    sget-object v15, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->ASIA:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addNewVehicleSoftInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v15, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->CHINA:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addNewVehicleSoftInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v15, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->EUROPE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addNewVehicleSoftInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v15, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->USA:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addNewVehicleSoftInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v15, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->HEAVYDUTY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addNewVehicleSoftInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 143
    .end local v4           #carVersionList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 144
    .local v2, bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIsDownload(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 152
    .end local v2           #bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    .restart local v4       #carVersionList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .line 153
    .local v3, carVersion:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->setIsExist(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 161
    .end local v3           #carVersion:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    .restart local v6       #fileList:[Ljava/lang/String;
    :cond_5
    aget-object v7, v6, v15

    .line 164
    .local v7, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v10

    .line 165
    .local v10, qb:Lde/greenrobot/dao/query/QueryBuilder;,"Lde/greenrobot/dao/query/QueryBuilder<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    sget-object v17, Lcom/cnlaunch/x431pro/utils/db/CarIconDao$Properties;->SoftPackageId:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Lde/greenrobot/dao/query/WhereCondition;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 166
    invoke-virtual {v10}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v11

    .line 169
    .local v11, updateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 170
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, versionPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getVersionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, versionStr:Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_7

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->addOrUpdateCarVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v13           #versionPath:Ljava/lang/String;
    .end local v14           #versionStr:Ljava/lang/String;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 172
    .restart local v13       #versionPath:Ljava/lang/String;
    .restart local v14       #versionStr:Ljava/lang/String;
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 173
    .local v8, item:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setSerialNo(Ljava/lang/String;)V

    .line 174
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setIsDownload(Ljava/lang/Boolean;)V

    .line 175
    invoke-static {v13}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getMaxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setMaxversion(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v8, v14}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVersionlist(Ljava/lang/String;)V

    .line 177
    invoke-static {v13}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllLanguageListOfTheCar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setLanguageList(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v8, v13}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->setVehiclePath(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->carIconDao:Lcom/cnlaunch/x431pro/utils/db/CarIconDao;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/utils/db/CarIconDao;->update(Ljava/lang/Object;)V

    goto :goto_3
.end method
