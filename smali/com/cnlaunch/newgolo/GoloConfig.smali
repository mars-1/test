.class public Lcom/cnlaunch/newgolo/GoloConfig;
.super Ljava/lang/Object;
.source "GoloConfig.java"


# static fields
.field public static APP_ID:Ljava/lang/String; = null

.field public static APP_VERSION:Ljava/lang/String; = null

.field public static final BAIDU_KEY_TEST:Ljava/lang/String; = "cGkDZYLinYDfVVLw68Tv8GKV"

.field public static CAR_APP_URL:Ljava/lang/String; = null

.field public static CONFIG_URLS:Ljava/lang/String; = null

.field public static CURR_CAR_CONFIG_ID:I = 0x0

.field public static CURR_ON_CLICK:I = 0x0

.field public static DES_DECODE:Ljava/lang/String; = null

.field public static DES_ENCODE:Ljava/lang/String; = null

.field public static DES_KEY:Ljava/lang/String; = null

.field public static DIAGSOFT_URL:Ljava/lang/String; = null

.field public static DIAG_ON_CLICK:I = 0x0

.field public static final FILE:Ljava/lang/String; = "/file"

.field public static final HEAD:Ljava/lang/String; = "/head"

.field public static IM_SERVER_SHARE_URL:Ljava/lang/String; = null

.field public static IM_SERVER_URL:Ljava/lang/String; = null

.field public static KEY:Ljava/lang/String; = null

.field public static MAP_ON_CLICK:I = 0x0

.field public static MINIDIAG_APP_ID:Ljava/lang/String; = null

.field public static final PICTURE:Ljava/lang/String; = "/picture"

.field public static RECORD_ROOT_PATH:Ljava/lang/String; = null

.field public static final ROOT:Ljava/lang/String; = "/cnlaunch/xpro431/"

.field public static SERVER_HOST:Ljava/lang/String; = null

.field public static SERVER_PORT:I = 0x0

.field public static SERVER_VEHICLE_URL:Ljava/lang/String; = null

.field public static final THUMB:Ljava/lang/String; = "/thumb"

.field public static final VIDEO:Ljava/lang/String; = "/video"

.field public static final VOICE:Ljava/lang/String; = "/voice"

.field public static contactId:Ljava/lang/String;

.field public static isBindEmail:Z

.field public static isBindPhone:Z

.field public static logoMd5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "http://192.168.85.212:8081/application"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->CAR_APP_URL:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "http://base.api.dbscar.com"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->IM_SERVER_URL:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->IM_SERVER_URL:Ljava/lang/String;

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->CONFIG_URLS:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "http://192.168.85.212:8081/share"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->IM_SERVER_SHARE_URL:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "http://192.168.85.212:8081/application"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->SERVER_VEHICLE_URL:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "192.168.85.212"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->SERVER_HOST:Ljava/lang/String;

    .line 42
    const/16 v0, 0x1466

    sput v0, Lcom/cnlaunch/newgolo/GoloConfig;->SERVER_PORT:I

    .line 54
    const-string/jumbo v0, "http://mycar.cnlaunch.com:8080/mobile/softCenter/downloadEncryptDiagSoft.action"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->DIAGSOFT_URL:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "com.cnlaunch.golo3"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->KEY:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "2013120200000002"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->APP_ID:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "2014042900000007"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->MINIDIAG_APP_ID:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "3.00.005"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->APP_VERSION:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/chat/record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->RECORD_ROOT_PATH:Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    sput v0, Lcom/cnlaunch/newgolo/GoloConfig;->CURR_ON_CLICK:I

    .line 84
    const/16 v0, 0x3e8

    sput v0, Lcom/cnlaunch/newgolo/GoloConfig;->MAP_ON_CLICK:I

    .line 85
    const/16 v0, 0x3e9

    sput v0, Lcom/cnlaunch/newgolo/GoloConfig;->DIAG_ON_CLICK:I

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/cnlaunch/newgolo/GoloConfig;->CURR_CAR_CONFIG_ID:I

    .line 87
    const-string/jumbo v0, "0102030405060708"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->DES_KEY:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "DECODE"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->DES_DECODE:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "ENCODE"

    sput-object v0, Lcom/cnlaunch/newgolo/GoloConfig;->DES_ENCODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
